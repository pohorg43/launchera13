.class public Lcom/oplus/uxicon/ui/util/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/uxicon/ui/util/d$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/uxicon/ui/util/d;->a:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/uxicon/ui/util/d;->b:Z

    return-void
.end method

.method public static synthetic a()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/oplus/uxicon/ui/util/d;->a:Ljava/util/List;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)V
    .registers 4

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    new-instance v1, Lcom/oplus/uxicon/ui/util/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/oplus/uxicon/ui/util/d$b;-><init>(Lcom/oplus/uxicon/ui/util/d$a;)V

    invoke-virtual {v0, p0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/oplus/uxicon/ui/util/d;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized b()V
    .registers 7

    const-class v0, Lcom/oplus/uxicon/ui/util/d;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/oplus/uxicon/ui/util/d;->b:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_75

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    :try_start_9
    const-string v1, "OplusUxDrawableMappingHelper"

    const-string v2, "start parsePackMapping"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_75

    const/4 v1, 0x0

    :try_start_11
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/oplus/theme/OplusThemeUtil;->SYSTEM_THEME_DEFAULT_PATH:Ljava/lang/String;

    const-string v5, "drawableMapping.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_51
    .catchall {:try_start_11 .. :try_end_1f} :catchall_4c

    :try_start_1f
    sget-object v1, Lcom/oplus/uxicon/ui/util/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {v2}, Lcom/oplus/uxicon/ui/util/d;->a(Ljava/io/InputStream;)V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/oplus/uxicon/ui/util/d;->b:Z

    const-string v3, "OplusUxDrawableMappingHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parsePackMapping success--->size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_44} :catch_4a
    .catchall {:try_start_1f .. :try_end_44} :catchall_48

    :try_start_44
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_5e
    .catchall {:try_start_44 .. :try_end_47} :catchall_75

    goto :goto_65

    :catchall_48
    move-exception v1

    goto :goto_67

    :catch_4a
    move-object v1, v2

    goto :goto_51

    :catchall_4c
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_67

    :catch_51
    :goto_51
    :try_start_51
    const-string v2, "OplusUxDrawableMappingHelper"

    const-string v3, "parsePackMapping parseXml error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_4c

    if-eqz v1, :cond_65

    :try_start_5a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e
    .catchall {:try_start_5a .. :try_end_5d} :catchall_75

    goto :goto_65

    :catch_5e
    :try_start_5e
    const-string v1, "OplusUxDrawableMappingHelper"

    const-string v2, "parsePackMapping input error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_75

    :cond_65
    :goto_65
    monitor-exit v0

    return-void

    :goto_67
    if-eqz v2, :cond_74

    :try_start_69
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d
    .catchall {:try_start_69 .. :try_end_6c} :catchall_75

    goto :goto_74

    :catch_6d
    :try_start_6d
    const-string v2, "OplusUxDrawableMappingHelper"

    const-string v3, "parsePackMapping input error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    :goto_74
    throw v1
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_75

    :catchall_75
    move-exception v1

    monitor-exit v0

    throw v1
.end method
