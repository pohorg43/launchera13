.class public final Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->startReplaceAnim(ZLandroid/view/View;Landroid/view/View;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $launcher$inlined:Lcom/android/launcher/Launcher;

.field public final synthetic $onFinished$inlined:Lkotlin/jvm/functions/Function2;

.field public final synthetic $originInfo$inlined:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic $originView$inlined:Landroid/view/View;

.field public final synthetic $targetItemId$inlined:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $targetProviderName$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $targetView$inlined:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;Landroid/view/View;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 9

    iput-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->$launcher$inlined:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->$originView$inlined:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->$originInfo$inlined:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p4, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;

    iput-object p5, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->$targetView$inlined:Landroid/view/View;

    iput-object p6, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->$onFinished$inlined:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->$targetItemId$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p8, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->$targetProviderName$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->$launcher$inlined:Lcom/android/launcher/Launcher;

    iget-object v0, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->$originView$inlined:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->$originInfo$inlined:Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v2, 0x1

    const-string/jumbo v3, "transform theme area widget with anim"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    iget-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;

    iget-object v0, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->$targetView$inlined:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/card/IAreaWidget;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->getIAreaWidgetParentCellLayout(Lcom/android/launcher3/card/IAreaWidget;)Lcom/android/launcher3/OplusCellLayout;

    move-result-object p1

    if-nez p1, :cond_1f

    goto :goto_24

    :cond_1f
    iget-object v0, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->$targetView$inlined:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :goto_24
    iget-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->$launcher$inlined:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;

    iget-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->$onFinished$inlined:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->$targetItemId$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;->$targetProviderName$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v2, p0, v4}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lb3/d;)V

    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
