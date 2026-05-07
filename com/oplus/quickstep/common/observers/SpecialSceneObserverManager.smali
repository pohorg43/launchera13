.class public final Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager$INSTANCE;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager$INSTANCE;

.field private static final TAG:Ljava/lang/String; = "SpecialSceneObserverManager"


# instance fields
.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRegistered:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->INSTANCE:Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager$INSTANCE;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;

    new-instance v1, Lcom/oplus/quickstep/common/observers/ChildrenModeObserver;

    invoke-direct {v1}, Lcom/oplus/quickstep/common/observers/ChildrenModeObserver;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/oplus/quickstep/common/observers/SuperPowerSaveModeObserver;

    invoke-direct {v1}, Lcom/oplus/quickstep/common/observers/SuperPowerSaveModeObserver;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/oplus/quickstep/common/observers/FocusModeObserver;

    invoke-direct {v1}, Lcom/oplus/quickstep/common/observers/FocusModeObserver;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/oplus/quickstep/common/observers/StudyModeObserver;

    invoke-direct {v1}, Lcom/oplus/quickstep/common/observers/StudyModeObserver;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/oplus/quickstep/common/observers/WellBeingAssistantModeObserver;

    invoke-direct {v1}, Lcom/oplus/quickstep/common/observers/WellBeingAssistantModeObserver;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Li1/j;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mObservers:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final registerObserver(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mRegistered:Z

    const-string v1, "registerObserver: mRegistered = "

    const-string v2, "SpecialSceneObserverManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mRegistered:Z

    if-eqz v0, :cond_13

    return-void

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mRegistered:Z

    iget-object p0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mObservers:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;Z)V

    goto :goto_1c

    :cond_2d
    return-void
.end method

.method public final unregisterObserver(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mRegistered:Z

    const-string v1, "unregisterObserver: mRegistered = "

    const-string v2, "SpecialSceneObserverManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mRegistered:Z

    if-nez v0, :cond_13

    return-void

    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mRegistered:Z

    iget-object p0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mObservers:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->unregister(Landroid/content/Context;)V

    goto :goto_1c

    :cond_2c
    return-void
.end method
