.class public final Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager$INSTANCE;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager$INSTANCE;

.field private static final TAG:Ljava/lang/String; = "SnapshotViewManager"


# instance fields
.field private snapshotView:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

.field private snapshotVisible:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager$INSTANCE;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->runSnapshotViewToExternalScreenAnimation$lambda-3$lambda-2(Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final initSnapshotView(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

    invoke-direct {v0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotView:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotView:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

    if-nez p1, :cond_10

    goto :goto_14

    :cond_10
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_14
    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotView:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

    const/4 v0, 0x0

    if-nez p1, :cond_1a

    goto :goto_1d

    :cond_1a
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :goto_1d
    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotView:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

    if-nez p1, :cond_22

    goto :goto_25

    :cond_22
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    :goto_25
    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotView:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

    if-nez p0, :cond_2a

    goto :goto_2d

    :cond_2a
    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    :goto_2d
    return-void
.end method

.method private final reset()V
    .registers 4

    const-string v0, "RapidReaction"

    const-string v1, "SnapshotViewManager"

    const-string v2, "reset()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->bindTask(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p0, v0, v0}, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->updateSnapshotViewVisibility(ZZ)V

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotView:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

    if-nez p0, :cond_1a

    goto :goto_2c

    :cond_1a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->VIEW_SCALE:Landroid/util/FloatProperty;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :goto_2c
    return-void
.end method

.method private static final runSnapshotViewToExternalScreenAnimation$lambda-3$lambda-2(Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->reset()V

    :cond_18
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addSnapshotCardView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result v0

    if-nez v0, :cond_1a

    const-string p0, "SnapshotViewManager"

    const-string p1, "addSnapshotCardView: it isn\'t flip, we are not add snapshot card view"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->initSnapshotView(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotView:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final bindTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotView:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bind(Lcom/android/systemui/shared/recents/model/Task;)V

    :goto_8
    return-void
.end method

.method public final canSwitchToExternalScreen()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotView:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final runSnapshotViewToExternalScreenAnimation(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RapidReaction"

    const-string v1, "SnapshotViewManager"

    const-string v2, "runSnapshotViewToExternalScreenAnimation()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotView:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

    if-nez v0, :cond_14

    const/4 v0, 0x0

    goto :goto_20

    :cond_14
    invoke-virtual {v0}, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->getTranslationEndTarget()[F

    move-result-object v1

    new-instance v2, Lcom/oplus/quickstep/rapidreaction/utils/g;

    invoke-direct {v2, p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/g;-><init>(Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;Ljava/util/function/Consumer;)V

    invoke-static {v0, v1, v2}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->runSnapshotViewToExternalScreenAnimation(Landroid/view/View;[FLjava/util/function/Consumer;)V

    :goto_20
    if-nez v0, :cond_27

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_27
    return-void
.end method

.method public final setFullscreenParams(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)V
    .registers 3

    const-string v0, "fullscreenDrawParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotView:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

    if-nez p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setFullscreenParams(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)V

    :goto_d
    return-void
.end method

.method public final setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotView:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    :goto_8
    return-void
.end method

.method public final updateCurrentRotation(I)V
    .registers 5

    const-string v0, "updateCurrentRotation: rotation="

    const-string v1, "RapidReaction"

    const-string v2, "SnapshotViewManager"

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotView:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

    if-nez p0, :cond_e

    goto :goto_11

    :cond_e
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->updateCurrentRotation(I)V

    :goto_11
    return-void
.end method

.method public final updateSnapshotViewPosition([I)V
    .registers 3

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotView:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

    if-nez p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->updateSnapshotViewPosition([I)V

    :goto_d
    return-void
.end method

.method public final updateSnapshotViewRect(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotView:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

    if-nez p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->updateSnapshotRect(Landroid/graphics/Rect;)V

    :goto_d
    return-void
.end method

.method public final updateSnapshotViewVisibility(ZZ)V
    .registers 5

    const-string v0, "updateSnapshotViewVisibility: visible="

    const-string v1, ", snapshotVisible="

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SnapshotViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotView:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;

    if-nez v0, :cond_1b

    goto :goto_2c

    :cond_1b
    iget-boolean v1, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotVisible:Z

    if-ne v1, p1, :cond_22

    if-nez p2, :cond_22

    return-void

    :cond_22
    iput-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->snapshotVisible:Z

    if-eqz p1, :cond_28

    const/4 p0, 0x0

    goto :goto_29

    :cond_28
    const/4 p0, 0x4

    :goto_29
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_2c
    return-void
.end method
