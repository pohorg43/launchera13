.class public Lcom/oplus/anim/EffectiveAnimationComposition$Factory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/EffectiveAnimationComposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/EffectiveAnimationComposition$Factory$ListenerAdapter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAssetFileName(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/anim/OnCompositionLoadedListener;)Lcom/oplus/anim/Cancellable;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationComposition$Factory$ListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/oplus/anim/EffectiveAnimationComposition$Factory$ListenerAdapter;-><init>(Lcom/oplus/anim/OnCompositionLoadedListener;Lcom/oplus/anim/EffectiveAnimationComposition$1;)V

    invoke-static {p0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationTask;->addListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;

    return-object v0
.end method

.method public static fromFileSync(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationComposition;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/EffectiveAnimationComposition;

    return-object p0
.end method

.method public static fromInputStream(Ljava/io/InputStream;Lcom/oplus/anim/OnCompositionLoadedListener;)Lcom/oplus/anim/Cancellable;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationComposition$Factory$ListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oplus/anim/EffectiveAnimationComposition$Factory$ListenerAdapter;-><init>(Lcom/oplus/anim/OnCompositionLoadedListener;Lcom/oplus/anim/EffectiveAnimationComposition$1;)V

    invoke-static {p0, v1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationTask;->addListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;

    return-object v0
.end method

.method public static fromInputStreamSync(Ljava/io/InputStream;)Lcom/oplus/anim/EffectiveAnimationComposition;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/EffectiveAnimationComposition;

    return-object p0
.end method

.method public static fromInputStreamSync(Ljava/io/InputStream;Z)Lcom/oplus/anim/EffectiveAnimationComposition;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_7

    const-string p1, "EffectiveAnimation now auto-closes input stream!"

    invoke-static {p1}, Lcom/oplus/anim/utils/Logger;->warning(Ljava/lang/String;)V

    :cond_7
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/EffectiveAnimationComposition;

    return-object p0
.end method

.method public static fromJsonReader(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/OnCompositionLoadedListener;)Lcom/oplus/anim/Cancellable;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationComposition$Factory$ListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oplus/anim/EffectiveAnimationComposition$Factory$ListenerAdapter;-><init>(Lcom/oplus/anim/OnCompositionLoadedListener;Lcom/oplus/anim/EffectiveAnimationComposition$1;)V

    invoke-static {p0, v1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonReader(Lcom/oplus/anim/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationTask;->addListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;

    return-object v0
.end method

.method public static fromJsonString(Ljava/lang/String;Lcom/oplus/anim/OnCompositionLoadedListener;)Lcom/oplus/anim/Cancellable;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationComposition$Factory$ListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oplus/anim/EffectiveAnimationComposition$Factory$ListenerAdapter;-><init>(Lcom/oplus/anim/OnCompositionLoadedListener;Lcom/oplus/anim/EffectiveAnimationComposition$1;)V

    invoke-static {p0, v1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonString(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationTask;->addListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;

    return-object v0
.end method

.method public static fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/oplus/anim/EffectiveAnimationComposition;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonSync(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/EffectiveAnimationComposition;

    return-object p0
.end method

.method public static fromJsonSync(Lcom/oplus/anim/parser/moshi/JsonReader;)Lcom/oplus/anim/EffectiveAnimationComposition;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonReaderSync(Lcom/oplus/anim/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/EffectiveAnimationComposition;

    return-object p0
.end method

.method public static fromJsonSync(Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationComposition;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/EffectiveAnimationComposition;

    return-object p0
.end method

.method public static fromRawFile(Landroid/content/Context;ILcom/oplus/anim/OnCompositionLoadedListener;)Lcom/oplus/anim/Cancellable;
    .registers 5
    .param p1  # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationComposition$Factory$ListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/oplus/anim/EffectiveAnimationComposition$Factory$ListenerAdapter;-><init>(Lcom/oplus/anim/OnCompositionLoadedListener;Lcom/oplus/anim/EffectiveAnimationComposition$1;)V

    invoke-static {p0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromRawRes(Landroid/content/Context;I)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationTask;->addListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;

    return-object v0
.end method
