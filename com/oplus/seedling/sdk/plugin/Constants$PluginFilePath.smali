.class public final Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/plugin/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PluginFilePath"
.end annotation


# static fields
.field public static final FILE_CONFIG:Ljava/lang/String; = "config.json"

.field public static final FILE_PLUGIN:Ljava/lang/String; = "SeedlingSdk.apk"

.field public static final FILE_SO:Ljava/lang/String; = "libuleflutter.so"

.field public static final FOLDER_SDK:Ljava/lang/String; = "seedlingsdk_plugin"

.field private static final FOLDER_SDK_CACHE:Ljava/lang/String; = "seedlingsdk_plugin_cache"

.field public static final FOLDER_SDK_LITE:Ljava/lang/String; = "lite"

.field public static final FOLDER_SDK_STANDARD:Ljava/lang/String; = "standard"

.field private static final FOLDER_SO:Ljava/lang/String; = "lib_so"

.field public static final INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

.field private static final PATH_FILES_DIR:Ljava/lang/String;

.field private static final PATH_FOLDER_SDK:Ljava/lang/String;

.field private static final PATH_FOLDER_SDK_CACHE:Ljava/lang/String;

.field private static final PATH_FOLDER_SO:Ljava/lang/String;

.field private static final PATH_FOLDER_SO_CACHE:Ljava/lang/String;

.field private static final PATH_LOCAL_CONFIG:Ljava/lang/String;

.field private static final PATH_PLUGIN:Ljava/lang/String;

.field private static final PATH_REMOTE_CONFIG:Ljava/lang/String;

.field private static final PATH_REMOTE_SDK_LITE:Ljava/lang/String;

.field private static final PATH_REMOTE_SDK_STANDARD:Ljava/lang/String;

.field private static final PATH_REMOTE_SO_FOLDER_LITE:Ljava/lang/String;

.field private static final PATH_REMOTE_SO_FOLDER_STANDARD:Ljava/lang/String;

.field private static final PATH_REMOTE_SO_STANDARD:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_FILES_DIR:Ljava/lang/String;

    const-string v2, "seedlingsdk_plugin"

    invoke-static {v0, v2}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_FOLDER_SDK:Ljava/lang/String;

    const-string v4, "seedlingsdk_plugin_cache"

    invoke-static {v0, v4}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_FOLDER_SDK_CACHE:Ljava/lang/String;

    const-string v5, "lib_so"

    invoke-static {v0, v4, v1, v5}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_FOLDER_SO_CACHE:Ljava/lang/String;

    const-string v0, "config.json"

    invoke-static {v3, v1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_LOCAL_CONFIG:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_REMOTE_CONFIG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "lite"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "SeedlingSdk.apk"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_REMOTE_SDK_LITE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "standard"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_REMOTE_SDK_STANDARD:Ljava/lang/String;

    invoke-static {v2, v1, v7, v1, v5}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "libuleflutter.so"

    invoke-static {v0, v1, v8}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_REMOTE_SO_STANDARD:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_REMOTE_SO_FOLDER_LITE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_REMOTE_SO_FOLDER_STANDARD:Ljava/lang/String;

    invoke-static {v3, v1, v6}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_PLUGIN:Ljava/lang/String;

    invoke-static {v3, v1, v5}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_FOLDER_SO:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPATH_FOLDER_SDK()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_FOLDER_SDK:Ljava/lang/String;

    return-object p0
.end method

.method public final getPATH_FOLDER_SDK_CACHE()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_FOLDER_SDK_CACHE:Ljava/lang/String;

    return-object p0
.end method

.method public final getPATH_FOLDER_SO()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_FOLDER_SO:Ljava/lang/String;

    return-object p0
.end method

.method public final getPATH_FOLDER_SO_CACHE()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_FOLDER_SO_CACHE:Ljava/lang/String;

    return-object p0
.end method

.method public final getPATH_LOCAL_CONFIG()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_LOCAL_CONFIG:Ljava/lang/String;

    return-object p0
.end method

.method public final getPATH_PLUGIN()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_PLUGIN:Ljava/lang/String;

    return-object p0
.end method

.method public final getPATH_REMOTE_CONFIG()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_REMOTE_CONFIG:Ljava/lang/String;

    return-object p0
.end method

.method public final getPATH_REMOTE_SDK_LITE()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_REMOTE_SDK_LITE:Ljava/lang/String;

    return-object p0
.end method

.method public final getPATH_REMOTE_SDK_STANDARD()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_REMOTE_SDK_STANDARD:Ljava/lang/String;

    return-object p0
.end method

.method public final getPATH_REMOTE_SO_FOLDER_LITE()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_REMOTE_SO_FOLDER_LITE:Ljava/lang/String;

    return-object p0
.end method

.method public final getPATH_REMOTE_SO_FOLDER_STANDARD()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_REMOTE_SO_FOLDER_STANDARD:Ljava/lang/String;

    return-object p0
.end method

.method public final getPATH_REMOTE_SO_STANDARD()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->PATH_REMOTE_SO_STANDARD:Ljava/lang/String;

    return-object p0
.end method
