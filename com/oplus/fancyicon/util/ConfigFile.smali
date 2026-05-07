.class public Lcom/oplus/fancyicon/util/ConfigFile;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/util/ConfigFile$Variable;,
        Lcom/oplus/fancyicon/util/ConfigFile$OnLoadElementListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ConfigFile"

.field private static final PERMISSION:I = 0x1ff

.field private static final TAG_LOCKSTYLE_TIME_STAMP:Ljava/lang/String; = "lockstyleTimeStamp"

.field private static final TAG_ROOT:Ljava/lang/String; = "Config"

.field private static final TAG_VARIABLE:Ljava/lang/String; = "Variable"

.field private static final TAG_VARIABLES:Ljava/lang/String; = "Variables"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/fancyicon/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/oplus/fancyicon/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/fancyicon/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private deleteConfigFile()V
    .registers 2

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_1a

    const-string p0, "ConfigFile"

    const-string v0, "deleteConfigFile fail!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method

.method private loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/util/ConfigFile$OnLoadElementListener;)V
    .registers 8

    invoke-static {p1, p2}, Lcom/oplus/fancyicon/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_2e

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    :goto_f
    if-ge p1, p2, :cond_2e

    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {p4, v0}, Lcom/oplus/fancyicon/util/ConfigFile$OnLoadElementListener;->onLoadElement(Lorg/w3c/dom/Element;)V

    :cond_2b
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_2e
    return-void
.end method

.method private loadLockstyleTimeStamp(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .registers 2

    const-string p0, "lockstyleTimeStamp"

    invoke-static {p1, p0}, Lcom/oplus/fancyicon/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_f

    const-string p1, "time"

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .registers 5

    new-instance v0, Lcom/oplus/fancyicon/util/ConfigFile$1;

    invoke-direct {v0, p0}, Lcom/oplus/fancyicon/util/ConfigFile$1;-><init>(Lcom/oplus/fancyicon/util/ConfigFile;)V

    const-string v1, "Variables"

    const-string v2, "Variable"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/oplus/fancyicon/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/util/ConfigFile$OnLoadElementListener;)V

    return-void
.end method

.method private obtainLockstyleTimeStamp()Ljava/lang/String;
    .registers 3

    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_LOCKSTYLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_14

    :cond_12
    const-wide/16 v0, 0x0

    :goto_14
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_54

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, "string"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "number"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    :cond_1d
    iget-object v0, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_20
    iget-object v2, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/fancyicon/util/ConfigFile$Variable;

    const/4 v3, 0x1

    if-nez v2, :cond_38

    new-instance v2, Lcom/oplus/fancyicon/util/ConfigFile$Variable;

    invoke-direct {v2}, Lcom/oplus/fancyicon/util/ConfigFile$Variable;-><init>()V

    iput-object p1, v2, Lcom/oplus/fancyicon/util/ConfigFile$Variable;->mName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    :cond_38
    iget-object p0, v2, Lcom/oplus/fancyicon/util/ConfigFile$Variable;->mType:Ljava/lang/String;

    invoke-static {p0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_43

    iput-object p3, v2, Lcom/oplus/fancyicon/util/ConfigFile$Variable;->mType:Ljava/lang/String;

    move v1, v3

    :cond_43
    iget-object p0, v2, Lcom/oplus/fancyicon/util/ConfigFile$Variable;->mValue:Ljava/lang/String;

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4e

    iput-object p2, v2, Lcom/oplus/fancyicon/util/ConfigFile$Variable;->mValue:Ljava/lang/String;

    goto :goto_4f

    :cond_4e
    move v3, v1

    :goto_4f
    monitor-exit v0

    return v3

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_20 .. :try_end_53} :catchall_51

    throw p0

    :cond_54
    return v1
.end method

.method public static setPermissions(Ljava/lang/String;III)I
    .registers 6

    const-string v0, "): "

    const-string v1, "ConfigFile"

    :try_start_4
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_7} :catch_2e

    if-gez p2, :cond_b

    if-ltz p3, :cond_e

    :cond_b
    :try_start_b
    invoke-static {p0, p2, p3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_e} :catch_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :catch_10
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to chown("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p1, Landroid/system/ErrnoException;->errno:I

    return p0

    :catch_2e
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to chmod("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p1, Landroid/system/ErrnoException;->errno:I

    return p0
.end method

.method private writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "<"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_c

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oplus/fancyicon/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method private writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "<"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    :goto_9
    array-length p2, p3

    if-ge p0, p2, :cond_32

    if-eqz p5, :cond_16

    aget-object p2, p4, p0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2f

    :cond_16
    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p3, p0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "=\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p4, p0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_32
    const-string p0, "/>\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private writeVariables(Ljava/lang/StringBuilder;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    const-string v1, "Variables"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/oplus/fancyicon/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v1, "name"

    const-string v3, "type"

    const-string v4, "value"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/fancyicon/util/ConfigFile$Variable;

    const-string v6, "Variable"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    iget-object v8, v4, Lcom/oplus/fancyicon/util/ConfigFile$Variable;->mName:Ljava/lang/String;

    aput-object v8, v7, v2

    iget-object v8, v4, Lcom/oplus/fancyicon/util/ConfigFile$Variable;->mType:Ljava/lang/String;

    aput-object v8, v7, v5

    const/4 v5, 0x2

    iget-object v4, v4, Lcom/oplus/fancyicon/util/ConfigFile$Variable;->mValue:Ljava/lang/String;

    aput-object v4, v7, v5

    invoke-direct {p0, p1, v6, v1, v7}, Lcom/oplus/fancyicon/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_27

    :cond_4a
    const-string v1, "Variables"

    invoke-direct {p0, p1, v1, v5}, Lcom/oplus/fancyicon/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    monitor-exit v0

    return-void

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw p0
.end method


# virtual methods
.method public checkLoadOrDelete()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_85

    const/4 v0, 0x0

    :try_start_a
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_62
    .catchall {:try_start_a .. :try_end_15} :catchall_60

    if-nez v2, :cond_1b

    invoke-static {v0}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_1b
    :try_start_1b
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_62
    .catchall {:try_start_1b .. :try_end_20} :catchall_60

    :try_start_20
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Config"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-direct {p0}, Lcom/oplus/fancyicon/util/ConfigFile;->obtainLockstyleTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/oplus/fancyicon/util/ConfigFile;->loadLockstyleTimeStamp(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    invoke-direct {p0}, Lcom/oplus/fancyicon/util/ConfigFile;->deleteConfigFile()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_4f} :catch_5d
    .catchall {:try_start_20 .. :try_end_4f} :catchall_5a

    invoke-static {v2}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_53
    :try_start_53
    invoke-direct {p0, v0}, Lcom/oplus/fancyicon/util/ConfigFile;->loadVariables(Lorg/w3c/dom/Element;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_5d
    .catchall {:try_start_53 .. :try_end_56} :catchall_5a

    :cond_56
    invoke-static {v2}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_80

    :catchall_5a
    move-exception p0

    move-object v0, v2

    goto :goto_81

    :catch_5d
    move-exception p0

    move-object v0, v2

    goto :goto_63

    :catchall_60
    move-exception p0

    goto :goto_81

    :catch_62
    move-exception p0

    :goto_63
    :try_start_63
    const-string v1, "ConfigFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLoadOrDelete error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_63 .. :try_end_7d} :catchall_60

    invoke-static {v0}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_80
    return-void

    :goto_81
    invoke-static {v0}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :catchall_85
    move-exception p0

    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p0
.end method

.method public putNumber(Ljava/lang/String;D)Z
    .registers 4

    invoke-static {p2, p3}, Lcom/oplus/fancyicon/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public putNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "number"

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/fancyicon/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "string"

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/fancyicon/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public save()Z
    .registers 9

    const-string v0, "ConfigFile"

    const-string v1, "save size = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1b
    iget-object v1, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gtz v1, :cond_26

    monitor-exit v0

    return v2

    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_da

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config"

    invoke-direct {p0, v3, v4, v1}, Lcom/oplus/fancyicon/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v4, "lockstyleTimeStamp"

    const-string v5, "time"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/fancyicon/util/ConfigFile;->obtainLockstyleTimeStamp()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/oplus/fancyicon/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/oplus/fancyicon/util/ConfigFile;->writeVariables(Ljava/lang/StringBuilder;)V

    const-string v4, "Config"

    invoke-direct {p0, v3, v4, v2}, Lcom/oplus/fancyicon/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_8d

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_7c

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7c

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_7c

    const-string p0, "ConfigFile"

    const-string v2, "save mkdirs error"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_78} :catch_b6
    .catchall {:try_start_29 .. :try_end_78} :catchall_b4

    invoke-static {v0}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v1

    :cond_7c
    :try_start_7c
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_8d

    const-string p0, "ConfigFile"

    const-string v2, "save createNewFile error"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_89} :catch_b6
    .catchall {:try_start_7c .. :try_end_89} :catchall_b4

    invoke-static {v0}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v1

    :cond_8d
    :try_start_8d
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a8

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_98} :catch_b6
    .catchall {:try_start_8d .. :try_end_98} :catchall_b4

    :try_start_98
    const-string v0, "utf-8"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a1} :catch_a5
    .catchall {:try_start_98 .. :try_end_a1} :catchall_a3

    move-object v0, v5

    goto :goto_a8

    :catchall_a3
    move-exception p0

    goto :goto_d6

    :catch_a5
    move-exception p0

    move-object v0, v5

    goto :goto_b7

    :cond_a8
    :goto_a8
    :try_start_a8
    iget-object p0, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mFilePath:Ljava/lang/String;

    const/16 v3, 0x1ff

    const/4 v4, -0x1

    invoke-static {p0, v3, v4, v4}, Lcom/oplus/fancyicon/util/ConfigFile;->setPermissions(Ljava/lang/String;III)I
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_b0} :catch_b6
    .catchall {:try_start_a8 .. :try_end_b0} :catchall_b4

    invoke-static {v0}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v2

    :catchall_b4
    move-exception p0

    goto :goto_d5

    :catch_b6
    move-exception p0

    :goto_b7
    :try_start_b7
    const-string v2, "ConfigFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catchall {:try_start_b7 .. :try_end_d1} :catchall_b4

    invoke-static {v0}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v1

    :goto_d5
    move-object v5, v0

    :goto_d6
    invoke-static {v5}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :catchall_da
    move-exception p0

    :try_start_db
    monitor-exit v0
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_da

    throw p0
.end method

.method public updateIndexedVariables(Lcom/oplus/fancyicon/data/Variables;)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    iget-object p0, p0, Lcom/oplus/fancyicon/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/fancyicon/util/ConfigFile$Variable;

    iget-object v2, v1, Lcom/oplus/fancyicon/util/ConfigFile$Variable;->mType:Ljava/lang/String;

    const-string v3, "string"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v1, Lcom/oplus/fancyicon/util/ConfigFile$Variable;->mName:Ljava/lang/String;

    iget-object v1, v1, Lcom/oplus/fancyicon/util/ConfigFile$Variable;->mValue:Ljava/lang/String;

    invoke-static {v2, p1, v1}, Lcom/oplus/fancyicon/util/Utils;->putVariableString(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;Ljava/lang/String;)V

    goto :goto_17

    :cond_35
    iget-object v2, v1, Lcom/oplus/fancyicon/util/ConfigFile$Variable;->mType:Ljava/lang/String;

    const-string v3, "number"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_6d

    if-eqz v2, :cond_17

    :try_start_3f
    iget-object v2, v1, Lcom/oplus/fancyicon/util/ConfigFile$Variable;->mValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v1, v1, Lcom/oplus/fancyicon/util/ConfigFile$Variable;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/oplus/fancyicon/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;Ljava/lang/Double;)V
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_4e} :catch_4f
    .catchall {:try_start_3f .. :try_end_4e} :catchall_6d

    goto :goto_17

    :catch_4f
    move-exception v1

    :try_start_50
    const-string v2, "ConfigFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIndexedVariables error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_6b
    monitor-exit v0

    return-void

    :catchall_6d
    move-exception p0

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_50 .. :try_end_6f} :catchall_6d

    throw p0
.end method
