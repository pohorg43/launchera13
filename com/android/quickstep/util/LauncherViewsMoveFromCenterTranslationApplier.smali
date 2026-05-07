.class public Lcom/android/quickstep/util/LauncherViewsMoveFromCenterTranslationApplier;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$TranslationApplier;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;FF)V
    .registers 4

    instance-of p0, p1, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz p0, :cond_a

    check-cast p1, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setTranslationForMoveFromCenterAnimation(FF)V

    goto :goto_24

    :cond_a
    instance-of p0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz p0, :cond_14

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/BubbleTextView;->setTranslationForMoveFromCenterAnimation(FF)V

    goto :goto_24

    :cond_14
    instance-of p0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p0, :cond_1e

    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/folder/FolderIcon;->setTranslationForMoveFromCenterAnimation(FF)V

    goto :goto_24

    :cond_1e
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    :goto_24
    return-void
.end method
