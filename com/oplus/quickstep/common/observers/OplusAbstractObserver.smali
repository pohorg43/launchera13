.class public abstract Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;
.super Lcom/oplus/quickstep/common/AbstractObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/common/observers/OplusAbstractObserver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/common/observers/OplusAbstractObserver$Companion;

.field private static final DEFAULT_VALUE:I = -0x1


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->Companion:Lcom/oplus/quickstep/common/observers/OplusAbstractObserver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/common/AbstractObserver;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->LOG_TAG:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->mState:I

    return-void
.end method


# virtual methods
.method public final getLOG_TAG()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method public final getMState()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->mState:I

    return p0
.end method

.method public final getState()I
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->mState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getAppContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->mState:I

    :cond_14
    iget p0, p0, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->mState:I

    return p0
.end method

.method public abstract initState(Landroid/content/Context;)I
.end method

.method public final initStateIfNeed(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initState(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->mState:I

    iget-object p0, p0, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->LOG_TAG:Ljava/lang/String;

    const-string v0, "initStateIfNeed mState = "

    invoke-static {p1, v0, p0}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRegister(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->onRegister(Landroid/content/Context;)V

    iget v0, p0, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->mState:I

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    const/4 p1, -0x1

    if-eq v0, p1, :cond_1f

    iget p1, p0, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->mState:I

    if-eq p1, v0, :cond_1f

    iget-object p1, p0, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onRegister: oldState is not equals to newState and oldState is not default value, so notify value change"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->onChange(Z)V

    :cond_1f
    return-void
.end method

.method public final setMState(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->mState:I

    return-void
.end method
