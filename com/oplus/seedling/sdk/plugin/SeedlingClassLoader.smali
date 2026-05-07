.class public final Lcom/oplus/seedling/sdk/plugin/SeedlingClassLoader;
.super Ldalvik/system/DexClassLoader;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/plugin/SeedlingClassLoader$Companion;
    }
.end annotation


# static fields
.field private static final CHANNEL_CLASS_PREFIX:Ljava/lang/String; = "com.oplus.channel.server."

.field public static final Companion:Lcom/oplus/seedling/sdk/plugin/SeedlingClassLoader$Companion;

.field private static final FUNCTION:Ljava/lang/String; = "kotlin.jvm.functions."

.field private static final SEEDLING_CLASS_PREFIX:Ljava/lang/String; = "com.oplus.seedling.sdk."

.field private static final TAG:Ljava/lang/String; = "SeedlingClassLoader"


# instance fields
.field private final dexPath:Ljava/lang/String;

.field private final mHostClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/plugin/SeedlingClassLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/seedling/sdk/plugin/SeedlingClassLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/SeedlingClassLoader;->Companion:Lcom/oplus/seedling/sdk/plugin/SeedlingClassLoader$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 6

    const-string v0, "dexPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeLibPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mHostClassLoader"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/plugin/SeedlingClassLoader;->dexPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/seedling/sdk/plugin/SeedlingClassLoader;->mHostClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private final setFileReadOnly(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_30

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/oplus/seedling/sdk/utils/OSUtils;->checkIsAboveOSVersion14(Z)Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    move-result p1

    if-nez p1, :cond_30

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/SeedlingClassLoader;->dexPath:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setReadOnly failed.dexPath="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeedlingClassLoader"

    invoke-static {p1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    return-void
.end method


# virtual methods
.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/SeedlingClassLoader;->dexPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/plugin/SeedlingClassLoader;->setFileReadOnly(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_c

    :cond_a
    move v3, v2

    goto :goto_15

    :cond_c
    const-string v3, "com.oplus.seedling.sdk."

    invoke-static {p1, v3, v2, v0}, Lp3/h;->n(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-ne v3, v1, :cond_a

    move v3, v1

    :goto_15
    const-string v4, "{\n            LogUtils.d…loadClass(name)\n        }"

    const-string v5, "SeedlingClassLoader"

    if-nez v3, :cond_55

    if-nez p1, :cond_1f

    :cond_1d
    move v3, v2

    goto :goto_28

    :cond_1f
    const-string v3, "com.oplus.channel.server."

    invoke-static {p1, v3, v2, v0}, Lp3/h;->n(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-ne v3, v1, :cond_1d

    move v3, v1

    :goto_28
    if-nez v3, :cond_55

    if-nez p1, :cond_2e

    :cond_2c
    move v1, v2

    goto :goto_36

    :cond_2e
    const-string v3, "kotlin.jvm.functions."

    invoke-static {p1, v3, v2, v0}, Lp3/h;->n(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-ne v0, v1, :cond_2c

    :goto_36
    if-eqz v1, :cond_39

    goto :goto_55

    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "use seed classloader to load:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/oplus/seedling/sdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_72

    :cond_55
    :goto_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "use host classloader to load:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/oplus/seedling/sdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/SeedlingClassLoader;->mHostClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_72
    return-object p0
.end method
