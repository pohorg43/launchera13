.class public Lcom/oplus/smartsdk/SmartEngineManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/smartsdk/SmartAPICallback;


# static fields
.field private static final SMART_IMPL_NAME:Ljava/lang/String; = "com.oplus.smartengine.SmartViewImpl"

.field private static final SMART_LOADER_NAME:Ljava/lang/String; = "com.oplus.smartengine.plugin.SmartClassLoader"

.field public static final SMART_PACKAGE:Ljava/lang/String; = "com.oplus.smartengine"

.field private static final TAG:Ljava/lang/String; = "SmartEngineManager"

.field private static final THREAD_POOL:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final mHostContext:Landroid/content/Context;

.field private mInflaterFactory:Lcom/oplus/smartsdk/InflaterFactory;

.field private mLoadSuccess:Z

.field private mPluginContext:Lcom/oplus/smartsdk/PluginContext;

.field private mSmartClassloader:Ljava/lang/ClassLoader;

.field private mSmartContext:Landroid/content/Context;

.field private mSmartImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mSmartVersionApi:Lcom/oplus/smartsdk/SmartVersionApi;

.field private mSmartViewApi:Lcom/oplus/smartsdk/ISmartViewApi;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oplus/smartsdk/SmartEngineManager;->THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mHostContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/smartsdk/SmartVersionApi;->getInstance(Landroid/content/Context;)Lcom/oplus/smartsdk/SmartVersionApi;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mSmartVersionApi:Lcom/oplus/smartsdk/SmartVersionApi;

    invoke-virtual {p0, p0}, Lcom/oplus/smartsdk/SmartEngineManager;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/smartsdk/SmartEngineManager;Lcom/oplus/smartsdk/SmartAPICallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/smartsdk/SmartEngineManager;->lambda$getSmartApi$0(Lcom/oplus/smartsdk/SmartAPICallback;)V

    return-void
.end method

.method private static getParentField(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Field;
    .registers 7

    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/lang/ClassLoader;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    const/4 v5, 0x1

    :try_start_11
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_18} :catch_1b

    if-ne v5, v0, :cond_1b

    goto :goto_1f

    :catch_1b
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    return-object v4
.end method

.method private synthetic lambda$getSmartApi$0(Lcom/oplus/smartsdk/SmartAPICallback;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mSmartVersionApi:Lcom/oplus/smartsdk/SmartVersionApi;

    iget-object v1, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mHostContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/smartsdk/SmartVersionApi;->reloadSmartEngine(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mInflaterFactory:Lcom/oplus/smartsdk/InflaterFactory;

    iput-object v1, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mSmartViewApi:Lcom/oplus/smartsdk/ISmartViewApi;

    :cond_f
    invoke-direct {p0, v0}, Lcom/oplus/smartsdk/SmartEngineManager;->tryLoadSmartClassInternal(Z)V

    iget-object v0, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mSmartViewApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-eqz v0, :cond_1a

    invoke-interface {p1, v0}, Lcom/oplus/smartsdk/SmartAPICallback;->onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mSmartImplClass:Ljava/lang/Class;

    if-eqz v0, :cond_3e

    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/smartsdk/ISmartViewApi;

    iput-object v0, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mSmartViewApi:Lcom/oplus/smartsdk/ISmartViewApi;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_26} :catch_27

    goto :goto_3e

    :catch_27
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSmartApi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartEngineManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    :goto_3e
    iget-object p0, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mSmartViewApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-eqz p0, :cond_45

    invoke-interface {p1, p0}, Lcom/oplus/smartsdk/SmartAPICallback;->onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V

    :cond_45
    return-void
.end method

.method private tryLoadSmartClassInternal(Z)V
    .registers 7

    iget-boolean v0, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mLoadSuccess:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    return-void

    :cond_7
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mLoadSuccess:Z

    :try_start_a
    iget-object v0, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mHostContext:Landroid/content/Context;

    const-string v1, "com.oplus.smartengine"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mSmartContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    new-instance v0, Lcom/oplus/smartsdk/SmartClassLoader;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mHostContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/oplus/smartsdk/SmartClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mSmartClassloader:Ljava/lang/ClassLoader;

    const-string p1, "com.oplus.smartengine.SmartViewImpl"

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mSmartImplClass:Ljava/lang/Class;

    new-instance p1, Lcom/oplus/smartsdk/PluginContext;

    iget-object v0, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mSmartContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mHostContext:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2}, Lcom/oplus/smartsdk/PluginContext;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mPluginContext:Lcom/oplus/smartsdk/PluginContext;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-class v0, Landroid/view/LayoutInflater;

    const-string v1, "mFactory2"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v2, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mInflaterFactory:Lcom/oplus/smartsdk/InflaterFactory;

    if-nez v2, :cond_63

    new-instance v2, Lcom/oplus/smartsdk/InflaterFactory;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mSmartClassloader:Ljava/lang/ClassLoader;

    invoke-direct {v2, v3, v4}, Lcom/oplus/smartsdk/InflaterFactory;-><init>(Landroid/view/LayoutInflater$Factory2;Ljava/lang/ClassLoader;)V

    iput-object v2, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mInflaterFactory:Lcom/oplus/smartsdk/InflaterFactory;

    :cond_63
    iget-object v2, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mInflaterFactory:Lcom/oplus/smartsdk/InflaterFactory;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mLoadSuccess:Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_6a} :catch_6b

    goto :goto_82

    :catch_6b
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmartEngineManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_82
    return-void
.end method


# virtual methods
.method public getHostContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mPluginContext:Lcom/oplus/smartsdk/PluginContext;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object p0, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mHostContext:Landroid/content/Context;

    return-object p0
.end method

.method public getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V
    .registers 4

    if-eqz p1, :cond_c

    sget-object v0, Lcom/oplus/smartsdk/SmartEngineManager;->THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Lcom/oplus/smartsdk/SmartEngineManager;Lcom/oplus/smartsdk/SmartAPICallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method public onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    return-void
.end method
