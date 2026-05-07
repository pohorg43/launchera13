.class public final Lcom/oplus/quickstep/relay/RecentRelayInteraction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/relay/RecentRelayInteraction$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/relay/RecentRelayInteraction$Companion;

.field private static final TAG:Ljava/lang/String; = "RecentRelayInteraction"


# instance fields
.field private currentPage:I

.field private isClicked:Z

.field private mHasObserveData:Z

.field private mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field

.field private mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

.field private final mRelayDataObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/oplus/quickstep/relay/data/RelayData;",
            ">;"
        }
    .end annotation
.end field

.field private mRelayState:Lcom/oplus/quickstep/relay/data/RelayState;

.field private relayData:Lcom/oplus/quickstep/relay/data/RelayData;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/relay/RecentRelayInteraction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->Companion:Lcom/oplus/quickstep/relay/RecentRelayInteraction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "mRecentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    new-instance p1, Lcom/oplus/quickstep/relay/a;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/relay/a;-><init>(Lcom/oplus/quickstep/relay/RecentRelayInteraction;)V

    iput-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayDataObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/relay/RecentRelayInteraction;Lcom/oplus/quickstep/relay/data/RelayData;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayDataObserver$lambda-0(Lcom/oplus/quickstep/relay/RecentRelayInteraction;Lcom/oplus/quickstep/relay/data/RelayData;)V

    return-void
.end method

.method public static final synthetic access$getMRecentsView$p(Lcom/oplus/quickstep/relay/RecentRelayInteraction;)Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-object p0
.end method

.method private static final mRelayDataObserver$lambda-0(Lcom/oplus/quickstep/relay/RecentRelayInteraction;Lcom/oplus/quickstep/relay/data/RelayData;)V
    .registers 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRelayDataChanged(), it="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", relayData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->getRelayData()Lcom/oplus/quickstep/relay/data/RelayData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentRelayInteraction"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    const/4 v0, 0x0

    if-nez p1, :cond_32

    move-object v1, v0

    goto :goto_36

    :cond_32
    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/data/RelayData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_36
    if-nez v1, :cond_3e

    sget-object v0, Lcom/oplus/quickstep/relay/data/RelayState$RelayDataEnd;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$RelayDataEnd;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    goto :goto_93

    :cond_3e
    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->getRelayData()Lcom/oplus/quickstep/relay/data/RelayData;

    move-result-object v1

    if-nez v1, :cond_6a

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setRelayData(Lcom/oplus/quickstep/relay/data/RelayData;)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/data/RelayData;->getBitmapInvalid()Z

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;

    invoke-direct {v5, p1, p0, v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;-><init>(Lcom/oplus/quickstep/relay/data/RelayData;Lcom/oplus/quickstep/relay/RecentRelayInteraction;Lb3/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    goto :goto_93

    :cond_64
    sget-object v0, Lcom/oplus/quickstep/relay/data/RelayState$RelayDataStart;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$RelayDataStart;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    goto :goto_93

    :cond_6a
    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->getRelayData()Lcom/oplus/quickstep/relay/data/RelayData;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/relay/data/RelayData;->iconChanged(Lcom/oplus/quickstep/relay/data/RelayData;)Z

    move-result v0

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez v0, :cond_89

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setRelayData(Lcom/oplus/quickstep/relay/data/RelayData;)V

    sget-object v0, Lcom/oplus/quickstep/relay/data/RelayState$RelayDataStart;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$RelayDataStart;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    goto :goto_93

    :cond_89
    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getIconView()Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    move-result-object v0

    if-nez v0, :cond_90

    goto :goto_93

    :cond_90
    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->updateRelayData(Lcom/oplus/quickstep/relay/data/RelayData;)V

    :cond_93
    :goto_93
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setRelayData(Lcom/oplus/quickstep/relay/data/RelayData;)V

    return-void
.end method

.method private final observeData(Z)V
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->INSTANCE:Lcom/oplus/quickstep/relay/data/RecentRelayModel;

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->getRelayData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p1, :cond_15

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->getRelayData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayDataObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iput-boolean v2, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mHasObserveData:Z

    goto :goto_38

    :cond_15
    iget-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    const/4 v0, 0x0

    if-nez p1, :cond_1b

    goto :goto_25

    :cond_1b
    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getTipsView()Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;

    move-result-object p1

    if-nez p1, :cond_22

    goto :goto_25

    :cond_22
    invoke-virtual {p1, v0, v2}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->dismiss(ZZ)V

    :goto_25
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/relay/data/RelayData;

    if-nez p1, :cond_2e

    goto :goto_31

    :cond_2e
    invoke-virtual {p1, v2}, Lcom/oplus/quickstep/relay/data/RelayData;->setBitmapInvalid(Z)V

    :goto_31
    iget-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayDataObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iput-boolean v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mHasObserveData:Z

    :goto_38
    return-void
.end method


# virtual methods
.method public final createLastDismissAnim(ILcom/android/launcher3/anim/PendingAnimation;)V
    .registers 4

    const-string v0, "anim"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->isVisible()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_17

    :cond_f
    iget-object p0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez p0, :cond_14

    goto :goto_17

    :cond_14
    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->createLastDismissAnim(Lcom/android/launcher3/anim/PendingAnimation;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public final getCurrentPage()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->currentPage:I

    return p0
.end method

.method public final getRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-object p0
.end method

.method public final getRelayData()Lcom/oplus/quickstep/relay/data/RelayData;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->relayData:Lcom/oplus/quickstep/relay/data/RelayData;

    return-object p0
.end method

.method public final isClicked()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->isClicked:Z

    return p0
.end method

.method public final isVisible()Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    :cond_6
    move v0, v2

    goto :goto_f

    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_f
    if-eqz v0, :cond_28

    iget-object p0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez p0, :cond_17

    const/4 p0, 0x0

    goto :goto_1f

    :cond_17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_1f
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    return v1
.end method

.method public final onCurrentPageChanged(I)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    const-string v0, "onCurrentPageChanged(), currentPage="

    const-string v2, ", alpha="

    invoke-static {v0, p1, v2}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez v2, :cond_15

    move-object v2, v1

    goto :goto_1d

    :cond_15
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", visibility="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez v2, :cond_2b

    move-object v2, v1

    goto :goto_33

    :cond_2b
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RecentRelayInteraction"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez p1, :cond_48

    goto :goto_4b

    :cond_48
    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->hide(Z)V

    :goto_4b
    iget-object p0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez p0, :cond_50

    goto :goto_8f

    :cond_50
    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getTipsView()Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;

    move-result-object p0

    if-nez p0, :cond_57

    goto :goto_8f

    :cond_57
    invoke-virtual {p0, v2, v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->dismiss(ZZ)V

    goto :goto_8f

    :cond_5b
    iget-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez p1, :cond_60

    goto :goto_68

    :cond_60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_68
    const/4 p1, 0x0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p1

    if-nez p1, :cond_7f

    iget-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez p1, :cond_74

    goto :goto_7c

    :cond_74
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_7c

    goto :goto_7d

    :cond_7c
    :goto_7c
    move v0, v2

    :goto_7d
    if-eqz v0, :cond_8f

    :cond_7f
    iget-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez p1, :cond_84

    goto :goto_87

    :cond_84
    invoke-virtual {p1, v2}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->show(Z)V

    :goto_87
    iget-object p0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez p0, :cond_8c

    goto :goto_8f

    :cond_8c
    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->showTips()V

    :cond_8f
    :goto_8f
    return-void
.end method

.method public final onDockViewAlphaChanged(F)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayState:Lcom/oplus/quickstep/relay/data/RelayState;

    sget-object v1, Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object p0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez p0, :cond_10

    goto :goto_13

    :cond_10
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->changeAlpha(F)V

    :goto_13
    return-void
.end method

.method public final onDockViewScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;)V
    .registers 5

    const-string v0, "scrollState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayState:Lcom/oplus/quickstep/relay/data/RelayState;

    sget-object v1, Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_22

    goto :goto_29

    :cond_22
    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_29

    move v2, v1

    :cond_29
    :goto_29
    if-eqz v2, :cond_2c

    goto :goto_50

    :cond_2c
    int-to-float v0, v1

    sget-object v1, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->Companion:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$Companion;

    invoke-virtual {v1}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$Companion;->getDIVIDER_INTERPOLATOR()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->getLinearInterpolation()F

    move-result v2

    invoke-interface {v1, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    sub-float v1, v0, v1

    sget-object v2, Lcom/oplus/quickstep/dock/DockIconView;->CURVE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->getLinearInterpolation()F

    move-result p1

    invoke-interface {v2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    sub-float/2addr v0, p1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez p0, :cond_4d

    goto :goto_50

    :cond_4d
    invoke-virtual {p0, v1, v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->changeAlphaApart(FF)V

    :cond_50
    :goto_50
    return-void
.end method

.method public final onFoldStateChange()V
    .registers 5

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    const-string v1, "onFoldStateChange(), "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mHasObserveData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecentRelayInteraction"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mHasObserveData:Z

    if-eqz v1, :cond_3c

    if-eqz v0, :cond_3c

    sget-object v1, Lcom/oplus/quickstep/relay/data/RelayState$FoldExpand;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$FoldExpand;

    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->observeData(Z)V

    goto :goto_44

    :cond_3c
    if-nez v1, :cond_44

    if-nez v0, :cond_44

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->observeData(Z)V

    :cond_44
    :goto_44
    sget-object p0, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->INSTANCE:Lcom/oplus/quickstep/relay/data/RecentRelayModel;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->onFoldStateChange(Z)V

    return-void
.end method

.method public final onRecentAttached()V
    .registers 3

    const-string v0, "RecentRelayInteraction"

    const-string v1, "onRecentAttached()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_1b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->observeData(Z)V

    :cond_1f
    return-void
.end method

.method public final onRecentDetached()V
    .registers 3

    const-string v0, "RecentRelayInteraction"

    const-string v1, "onRecentDetached()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->observeData(Z)V

    return-void
.end method

.method public final onRecentsViewRotate(ILandroid/animation/AnimatorSet;)V
    .registers 4

    const-string v0, "animatorSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-lez v0, :cond_e

    return-void

    :cond_e
    if-eqz p1, :cond_16

    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x1

    :goto_17
    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez v0, :cond_1c

    goto :goto_1f

    :cond_1c
    invoke-virtual {v0, p2, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->createRotateAnim(Landroid/animation/AnimatorSet;Z)V

    :goto_1f
    if-nez p1, :cond_2e

    iget-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showEmptyMessage()Z

    move-result p1

    if-nez p1, :cond_2e

    iget-object p0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    :cond_2e
    return-void
.end method

.method public final onTaskSizeChanged(I)V
    .registers 2

    if-lez p1, :cond_b

    iget-object p0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez p0, :cond_7

    goto :goto_b

    :cond_7
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_b
    :goto_b
    return-void
.end method

.method public final relayValid()Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object p0

    if-nez p0, :cond_10

    :cond_e
    move p0, v2

    goto :goto_17

    :cond_10
    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->isCurrentSupported()Z

    move-result p0

    if-ne p0, v1, :cond_e

    move p0, v1

    :goto_17
    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    return v1
.end method

.method public final setClicked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->isClicked:Z

    return-void
.end method

.method public final setCurrentPage(I)V
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->currentPage:I

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->currentPage:I

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->onCurrentPageChanged(I)V

    :cond_e
    return-void
.end method

.method public final setRelayData(Lcom/oplus/quickstep/relay/data/RelayData;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->relayData:Lcom/oplus/quickstep/relay/data/RelayData;

    return-void
.end method

.method public final update(Lcom/oplus/quickstep/relay/data/RelayState;)V
    .registers 8

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->relayData:Lcom/oplus/quickstep/relay/data/RelayData;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    move-object v0, v1

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/data/RelayData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_10
    if-eqz v0, :cond_1b4

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayState:Lcom/oplus/quickstep/relay/data/RelayState;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_1b4

    :cond_1c
    iput-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayState:Lcom/oplus/quickstep/relay/data/RelayState;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_c7

    const-string v0, "update(), state="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/data/RelayState;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->currentPage:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", relay: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez v5, :cond_48

    move v5, v2

    goto :goto_49

    :cond_48
    move v5, v3

    :goto_49
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez v5, :cond_55

    move-object v5, v1

    goto :goto_5d

    :cond_55
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_5d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez v5, :cond_69

    move-object v5, v1

    goto :goto_71

    :cond_69
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_71
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", dock: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v5

    if-nez v5, :cond_83

    move-object v5, v1

    goto :goto_8b

    :cond_83
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_8b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v5

    if-nez v5, :cond_9b

    move-object v5, v1

    goto :goto_a3

    :cond_9b
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_a3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v4

    if-nez v4, :cond_b3

    move-object v4, v1

    goto :goto_bb

    :cond_b3
    invoke-virtual {v4}, Lcom/oplus/quickstep/dock/DockView;->isScrolling()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_bb
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "RecentRelayInteraction"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c7
    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/data/RelayState;->getAttachView()Z

    move-result v0

    if-eqz v0, :cond_110

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez v0, :cond_e9

    new-instance v0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    iget-object v4, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-direct {v0, v4, p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/relay/RecentRelayInteraction;)V

    iput-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showEmptyMessage()Z

    move-result v0

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceUpdateEmptyMessage(Z)V

    :cond_e7
    iput-boolean v3, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->isClicked:Z

    :cond_e9
    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez v0, :cond_ee

    goto :goto_fa

    :cond_ee
    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getIconView()Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    move-result-object v0

    if-nez v0, :cond_f5

    goto :goto_fa

    :cond_f5
    iget-object v4, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->relayData:Lcom/oplus/quickstep/relay/data/RelayData;

    invoke-virtual {v0, v4}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->updateRelayData(Lcom/oplus/quickstep/relay/data/RelayData;)V

    :goto_fa
    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez v0, :cond_ff

    goto :goto_110

    :cond_ff
    iget-object v4, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_10c

    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_10d

    :cond_10c
    move-object v4, v1

    :goto_10d
    invoke-virtual {v0, v4}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->attach(Landroid/view/ViewGroup;)V

    :cond_110
    :goto_110
    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/data/RelayState;->getShowView()Z

    move-result v0

    if-eqz v0, :cond_122

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez v0, :cond_11b

    goto :goto_122

    :cond_11b
    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/data/RelayState;->getImmediately()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->show(Z)V

    :cond_122
    :goto_122
    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/data/RelayState;->getShowTips()Z

    move-result v0

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez v0, :cond_12d

    goto :goto_130

    :cond_12d
    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->showTips()V

    :cond_130
    :goto_130
    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/data/RelayState;->getDismissTips()Z

    move-result v0

    if-nez v0, :cond_13a

    iget-boolean v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->isClicked:Z

    if-eqz v0, :cond_169

    :cond_13a
    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez v0, :cond_13f

    goto :goto_169

    :cond_13f
    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getTipsView()Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;

    move-result-object v0

    if-nez v0, :cond_146

    goto :goto_169

    :cond_146
    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/data/RelayState;->getSaveTipsDismiss()Z

    move-result v4

    if-nez v4, :cond_153

    iget-boolean v4, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->isClicked:Z

    if-eqz v4, :cond_151

    goto :goto_153

    :cond_151
    move v4, v3

    goto :goto_154

    :cond_153
    :goto_153
    move v4, v2

    :goto_154
    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/data/RelayState;->getImmediately()Z

    move-result v5

    if-nez v5, :cond_166

    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/data/RelayState;->getDetachView()Z

    move-result v5

    if-nez v5, :cond_166

    iget-boolean v5, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->isClicked:Z

    if-eqz v5, :cond_165

    goto :goto_166

    :cond_165
    move v2, v3

    :cond_166
    :goto_166
    invoke-virtual {v0, v4, v2}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->dismiss(ZZ)V

    :cond_169
    :goto_169
    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/data/RelayState;->getHideView()Z

    move-result v0

    if-eqz v0, :cond_17b

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez v0, :cond_174

    goto :goto_17b

    :cond_174
    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/data/RelayState;->getImmediately()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->hide(Z)V

    :cond_17b
    :goto_17b
    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/data/RelayState;->getDetachView()Z

    move-result p1

    if-nez p1, :cond_185

    iget-boolean p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->isClicked:Z

    if-eqz p1, :cond_197

    :cond_185
    iget-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    if-nez p1, :cond_18a

    goto :goto_18d

    :cond_18a
    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->detach()V

    :goto_18d
    iput-object v1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayContainer:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    iget-boolean p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->isClicked:Z

    if-nez p1, :cond_195

    iput-object v1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->relayData:Lcom/oplus/quickstep/relay/data/RelayData;

    :cond_195
    iput-boolean v3, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->isClicked:Z

    :cond_197
    iget-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v1, "OVERVIEW"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_1b4

    iget-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayState:Lcom/oplus/quickstep/relay/data/RelayState;

    sget-object v0, Lcom/oplus/quickstep/relay/data/RelayState$RelayDataStart;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$RelayDataStart;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b4

    sget-object p1, Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;

    iput-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayState:Lcom/oplus/quickstep/relay/data/RelayState;

    :cond_1b4
    :goto_1b4
    return-void
.end method
