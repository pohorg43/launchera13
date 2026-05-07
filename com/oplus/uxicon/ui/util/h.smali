.class public Lcom/oplus/uxicon/ui/util/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/uxicon/ui/util/h$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/uxicon/ui/util/h;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/uxicon/ui/util/h;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/uxicon/ui/util/h;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/oplus/uxicon/ui/util/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Lcom/oplus/uxicon/ui/util/h;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_16
    return-object p0
.end method

.method public static a()V
    .registers 8

    const-string v0, "input error"

    const-string v1, "parsePackMapping"

    sget-boolean v2, Lcom/oplus/uxicon/ui/util/h;->c:Z

    if-eqz v2, :cond_9

    return-void

    :cond_9
    const-string v2, "IconPackMappingHelper"

    const-string v3, "start parsePackMapping"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_12
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/oplus/theme/OplusThemeUtil;->SYSTEM_THEME_DEFAULT_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "packMapping.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2a} :catch_44
    .catchall {:try_start_12 .. :try_end_2a} :catchall_3f

    :try_start_2a
    sget-object v2, Lcom/oplus/uxicon/ui/util/h;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-static {v4}, Lcom/oplus/uxicon/ui/util/h;->a(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_35} :catch_3d
    .catchall {:try_start_2a .. :try_end_35} :catchall_3b

    :try_start_35
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    sput-boolean v3, Lcom/oplus/uxicon/ui/util/h;->c:Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3a} :catch_53

    goto :goto_56

    :catchall_3b
    move-exception v2

    goto :goto_57

    :catch_3d
    move-exception v2

    goto :goto_48

    :catchall_3f
    move-exception v4

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    goto :goto_57

    :catch_44
    move-exception v4

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    :goto_48
    :try_start_48
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_3b

    if-eqz v4, :cond_50

    :try_start_4d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_50
    sput-boolean v3, Lcom/oplus/uxicon/ui/util/h;->c:Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_52} :catch_53

    goto :goto_56

    :catch_53
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    return-void

    :goto_57
    if-eqz v4, :cond_5c

    :try_start_59
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_5c
    sput-boolean v3, Lcom/oplus/uxicon/ui/util/h;->c:Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_5f

    goto :goto_62

    :catch_5f
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_62
    throw v2
.end method

.method public static a(Ljava/io/InputStream;)V
    .registers 3

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    new-instance v1, Lcom/oplus/uxicon/ui/util/h$a;

    invoke-direct {v1}, Lcom/oplus/uxicon/ui/util/h$a;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method
