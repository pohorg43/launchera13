.class public final Lcom/android/launcher3/card/reorder/TwoPanelExtrusionItemAnimation$2$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/reorder/TwoPanelExtrusionItemAnimation;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/card/reorder/ExtrusionItem;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $item:Lcom/android/launcher3/card/reorder/ExtrusionItem;

.field private hasInvalidate:Z

.field private isLauncherCardView:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/reorder/ExtrusionItem;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/TwoPanelExtrusionItemAnimation$2$2;->$item:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getExtrusionView()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/card/LauncherCardView;

    iput-boolean p1, p0, Lcom/android/launcher3/card/reorder/TwoPanelExtrusionItemAnimation$2$2;->isLauncherCardView:Z

    return-void
.end method


# virtual methods
.method public final getHasInvalidate()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/reorder/TwoPanelExtrusionItemAnimation$2$2;->hasInvalidate:Z

    return p0
.end method

.method public final isLauncherCardView()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/reorder/TwoPanelExtrusionItemAnimation$2$2;->isLauncherCardView:Z

    return p0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/card/reorder/TwoPanelExtrusionItemAnimation$2$2;->hasInvalidate:Z

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/launcher3/card/reorder/TwoPanelExtrusionItemAnimation$2$2;->isLauncherCardView:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2e

    iget-object p1, p0, Lcom/android/launcher3/card/reorder/TwoPanelExtrusionItemAnimation$2$2;->$item:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getExtrusionView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/card/reorder/TwoPanelExtrusionItemAnimation$2$2;->hasInvalidate:Z

    :cond_2e
    return-void
.end method

.method public final setHasInvalidate(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/reorder/TwoPanelExtrusionItemAnimation$2$2;->hasInvalidate:Z

    return-void
.end method

.method public final setLauncherCardView(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/reorder/TwoPanelExtrusionItemAnimation$2$2;->isLauncherCardView:Z

    return-void
.end method
