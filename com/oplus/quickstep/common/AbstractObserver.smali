.class public abstract Lcom/oplus/quickstep/common/AbstractObserver;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/common/AbstractObserver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/common/AbstractObserver$Companion;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mHasRegister:Z

.field private mKey:Ljava/lang/String;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/quickstep/common/IObserverListener;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/database/ContentObserver;

.field private mUri:Landroid/net/Uri;

.field private mWeakCtx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/common/AbstractObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/common/AbstractObserver;->Companion:Lcom/oplus/quickstep/common/AbstractObserver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/common/AbstractObserver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mListeners:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(ZLcom/oplus/quickstep/common/IObserverListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->onChange$lambda-0(ZLcom/oplus/quickstep/common/IObserverListener;)V

    return-void
.end method

.method private static final onChange$lambda-0(ZLcom/oplus/quickstep/common/IObserverListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/oplus/quickstep/common/IObserverListener;->onChange(Z)V

    return-void
.end method

.method private final register(Landroid/content/Context;IZZ)V
    .registers 12

    iget-boolean v0, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mHasRegister:Z

    if-nez v0, :cond_82

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/AbstractObserver;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/AbstractObserver;->getUri()Ljava/util/function/Function;

    move-result-object v0

    if-nez v0, :cond_20

    return-void

    :cond_20
    iget-object v1, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mKey:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mUri:Landroid/net/Uri;

    :cond_2d
    iget-object v0, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_32

    return-void

    :cond_32
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/AbstractObserver;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_4a

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_4a
    iget-object v1, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_55

    new-instance v1, Lcom/oplus/quickstep/common/AbstractObserver$register$1;

    invoke-direct {v1, p0, v0}, Lcom/oplus/quickstep/common/AbstractObserver$register$1;-><init>(Lcom/oplus/quickstep/common/AbstractObserver;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    iput-object v1, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mObserver:Landroid/database/ContentObserver;

    :cond_55
    if-eqz p3, :cond_6a

    sget-object v1, Lcom/oplus/quickstep/common/MultiUserContentHelper;->Companion:Lcom/oplus/quickstep/common/MultiUserContentHelper$Companion;

    iget-object v3, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, p1

    move v4, p4

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/quickstep/common/MultiUserContentHelper$Companion;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_7c

    :cond_6a
    sget-object v1, Lcom/oplus/quickstep/common/MultiUserContentHelper;->Companion:Lcom/oplus/quickstep/common/MultiUserContentHelper$Companion;

    iget-object v3, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, p1

    move v4, p4

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/quickstep/common/MultiUserContentHelper$Companion;->register(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :goto_7c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mHasRegister:Z

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->onRegister(Landroid/content/Context;)V

    :cond_82
    return-void
.end method

.method public static final toGlobalUri()Ljava/util/function/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/common/AbstractObserver;->Companion:Lcom/oplus/quickstep/common/AbstractObserver$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/common/AbstractObserver$Companion;->toGlobalUri()Ljava/util/function/Function;

    move-result-object v0

    return-object v0
.end method

.method public static final toSecureUri()Ljava/util/function/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/common/AbstractObserver;->Companion:Lcom/oplus/quickstep/common/AbstractObserver$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/common/AbstractObserver$Companion;->toSecureUri()Ljava/util/function/Function;

    move-result-object v0

    return-object v0
.end method

.method public static final toSystemUri()Ljava/util/function/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/common/AbstractObserver;->Companion:Lcom/oplus/quickstep/common/AbstractObserver$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/common/AbstractObserver$Companion;->toSystemUri()Ljava/util/function/Function;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs unregister(Landroid/content/Context;[Lcom/oplus/quickstep/common/AbstractObserver;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/common/AbstractObserver;->Companion:Lcom/oplus/quickstep/common/AbstractObserver$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver$Companion;->unregister(Landroid/content/Context;[Lcom/oplus/quickstep/common/AbstractObserver;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/oplus/quickstep/common/IObserverListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/content/Context;

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public getUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUri()Ljava/util/function/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onChange(Z)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mListeners:Ljava/util/List;

    new-instance v0, Lcom/android/launcher/l;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lcom/android/launcher/l;-><init>(ZI)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onRegister(Landroid/content/Context;)V
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public register(Landroid/content/Context;IZ)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZZ)V

    return-void
.end method

.method public register(Landroid/content/Context;Z)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZZ)V

    return-void
.end method

.method public registerForUserSwitch(Landroid/content/Context;IZ)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZZ)V

    return-void
.end method

.method public registerForUserSwitch(Landroid/content/Context;Z)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZZ)V

    return-void
.end method

.method public registerWithOnChange(Landroid/content/Context;IZ)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->unregister(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/common/AbstractObserver;->onChange(Z)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    return-void
.end method

.method public registerWithOnChange(Landroid/content/Context;Z)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->unregister(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/common/AbstractObserver;->onChange(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;Z)V

    return-void
.end method

.method public removeListener(Lcom/oplus/quickstep/common/IObserverListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mHasRegister:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_18

    sget-object v1, Lcom/oplus/quickstep/common/MultiUserContentHelper;->Companion:Lcom/oplus/quickstep/common/MultiUserContentHelper$Companion;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v0}, Lcom/oplus/quickstep/common/MultiUserContentHelper$Companion;->unregister(Landroid/content/Context;Landroid/database/ContentObserver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/quickstep/common/AbstractObserver;->mHasRegister:Z

    :cond_18
    return-void
.end method
