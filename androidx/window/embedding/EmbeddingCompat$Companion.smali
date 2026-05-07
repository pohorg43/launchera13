.class public final Landroidx/window/embedding/EmbeddingCompat$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/EmbeddingCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingCompat$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ly2/p;
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/window/embedding/EmbeddingCompat$Companion;->embeddingComponent$lambda-0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ly2/p;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ly2/p;
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/window/embedding/EmbeddingCompat$Companion;->embeddingComponent$lambda-1(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ly2/p;

    move-result-object p0

    return-object p0
.end method

.method private static final embeddingComponent$lambda-0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ly2/p;
    .registers 3

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method private static final embeddingComponent$lambda-1(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ly2/p;
    .registers 3

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method


# virtual methods
.method public final embeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;
    .registers 5

    const-class v0, Landroidx/window/embedding/EmbeddingCompat;

    invoke-virtual {p0}, Landroidx/window/embedding/EmbeddingCompat$Companion;->isEmbeddingAvailable()Z

    move-result p0

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.window.extensions.embedding.ActivityEmbeddingComponent"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_2d

    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object p0

    invoke-interface {p0}, Landroidx/window/extensions/WindowExtensions;->getActivityEmbeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    move-result-object p0

    if-nez p0, :cond_42

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Class;

    const-class v3, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    aput-object v3, v0, v2

    sget-object v2, Landroidx/window/embedding/a;->a:Landroidx/window/embedding/a;

    invoke-static {p0, v0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    goto :goto_42

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Class;

    const-class v3, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    aput-object v3, v0, v2

    sget-object v2, Landroidx/window/embedding/b;->a:Landroidx/window/embedding/b;

    invoke-static {p0, v0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    :cond_42
    :goto_42
    return-object p0
.end method

.method public final getExtensionApiLevel()Ljava/lang/Integer;
    .registers 3

    const-string p0, "EmbeddingCompat"

    const/4 v0, 0x0

    :try_start_3
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object v1

    invoke-interface {v1}, Landroidx/window/extensions/WindowExtensions;->getVendorApiLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_f} :catch_16
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_f} :catch_10

    goto :goto_1b

    :catch_10
    const-string v1, "Stub Extension"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :catch_16
    const-string v1, "Embedding extension version not found"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    return-object v0
.end method

.method public final isEmbeddingAvailable()Z
    .registers 3

    const-string p0, "EmbeddingCompat"

    const/4 v0, 0x0

    :try_start_3
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object v1

    invoke-interface {v1}, Landroidx/window/extensions/WindowExtensions;->getActivityEmbeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_b} :catch_16
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_b} :catch_10

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    move v0, p0

    goto :goto_1b

    :catch_10
    const-string v1, "Stub Extension"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :catch_16
    const-string v1, "Embedding extension version not found"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_1b
    return v0
.end method
