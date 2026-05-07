.class public Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$Companion;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0x190L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$Companion;

.field private static final REVERSE_ANIM_DELAY:J = 0xc8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LCR_ExtrusionItemAnimation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final item:Lcom/android/launcher3/card/reorder/ExtrusionItem;

.field private mAnim:Landroid/animation/ValueAnimator;

.field private final mCellLayout:Lcom/android/launcher3/CellLayout;

.field private final mExtrusionListener:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mExtrusionListener$1;

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mNeedAddAfterExtrusionAnimEnd:Z

.field private mNeedResetParentClip:Z

.field private final mReverseListener:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mReverseListener$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->Companion:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/card/reorder/ExtrusionItem;FJ)V
    .registers 8

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mCellLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iput-object p3, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->item:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    new-instance p1, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mExtrusionListener$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mExtrusionListener$1;-><init>(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;)V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mExtrusionListener:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mExtrusionListener$1;

    new-instance p1, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mReverseListener$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mReverseListener$1;-><init>(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;)V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mReverseListener:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mReverseListener$1;

    invoke-virtual {p3}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getX()I

    move-result p1

    invoke-virtual {p3}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getX()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p4

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_58

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 p4, 0x190

    invoke-virtual {p3, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p4, Lcom/android/launcher3/card/reorder/CardReorderInject;->extrusionPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p4, Lcom/android/launcher3/card/reorder/a;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/launcher3/card/reorder/a;-><init>(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;IF)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string/jumbo p1, "ofFloat(0f, 1f).apply {\n…)\n            }\n        }"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mAnim:Landroid/animation/ValueAnimator;

    return-void

    :array_58
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;IFLandroid/animation/ValueAnimator;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->lambda-1$lambda-0(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;IFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$applySwitchStateForView(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->applySwitchStateForView()V

    return-void
.end method

.method public static final synthetic access$getMNeedAddAfterExtrusionAnimEnd$p(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mNeedAddAfterExtrusionAnimEnd:Z

    return p0
.end method

.method public static final synthetic access$getMNeedResetParentClip$p(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mNeedResetParentClip:Z

    return p0
.end method

.method public static final synthetic access$setMNeedAddAfterExtrusionAnimEnd$p(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mNeedAddAfterExtrusionAnimEnd:Z

    return-void
.end method

.method public static final synthetic access$setMNeedResetParentClip$p(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mNeedResetParentClip:Z

    return-void
.end method

.method private final applySwitchStateForView()V
    .registers 5

    sget-object v0, Lcom/android/common/util/StateSwitchUtils;->INSTANCE:Lcom/android/common/util/StateSwitchUtils;

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->item:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getExtrusionView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.states.OplusBaseLauncherState"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/states/OplusBaseLauncherState;

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/states/OplusBaseLauncherState;->supportIconSelected(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/common/util/StateSwitchUtils;->applySwitchStateForView(Landroid/view/View;ZIZ)V

    return-void
.end method

.method private static final lambda-1$lambda-0(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;IFLandroid/animation/ValueAnimator;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->getItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getLp()Lcom/android/launcher3/CellLayout$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    int-to-float v1, v1

    sub-float/2addr v1, p3

    int-to-float p1, p1

    mul-float/2addr v1, p1

    mul-float/2addr p2, p3

    add-float/2addr p2, v1

    float-to-int p1, p2

    iput p1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->getItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getExtrusionView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz p2, :cond_37

    check-cast p1, Lcom/android/launcher3/card/IAreaWidget;

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    :goto_38
    if-nez p1, :cond_3b

    goto :goto_3e

    :cond_3b
    invoke-interface {p1, p3}, Lcom/android/launcher3/card/IAreaWidget;->setLayoutAnimValue(F)V

    :goto_3e
    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->getItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getExtrusionView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public final addToAfterPage()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mNeedAddAfterExtrusionAnimEnd:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->item:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->addToAfterPage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->onPostAddToAfterPage(Z)V

    :cond_13
    return-void
.end method

.method public final endExtrusion()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void
.end method

.method public final getItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->item:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    return-object p0
.end method

.method public final getMAnim()Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final getMCellLayout()Lcom/android/launcher3/CellLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mCellLayout:Lcom/android/launcher3/CellLayout;

    return-object p0
.end method

.method public final getMLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public onPostAddToAfterPage(Z)V
    .registers 5

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string/jumbo v1, "onPostAddToAfterPage,success="

    const-string v2, ",item="

    invoke-static {v1, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->item:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    return-void
.end method

.method public restoreExtrusionView()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mNeedAddAfterExtrusionAnimEnd:Z

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->item:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getLp()Lcom/android/launcher3/CellLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getX()I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getLp()Lcom/android/launcher3/CellLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getY()I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getLp()Lcom/android/launcher3/CellLayout$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getExtrusionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->applySwitchStateForView()V

    return-void
.end method

.method public final revertExtrusion(ZZ)V
    .registers 5

    iput-boolean p2, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mNeedResetParentClip:Z

    iget-object p2, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object p2, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->item:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getExtrusionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mReverseListener:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mReverseListener$1;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_2c

    :cond_24
    iget-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->restoreExtrusionView()V

    :goto_2c
    return-void
.end method

.method public final setMAnim(Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final startExtrusion()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->item:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getLp()Lcom/android/launcher3/CellLayout$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->mExtrusionListener:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mExtrusionListener$1;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
