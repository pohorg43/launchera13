.class Lcom/android/launcher3/graphics/IconShape$SimpleRectShape$1;
.super Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/graphics/IconShape$SimpleRectShape;->createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/graphics/IconShape$SimpleRectShape;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/graphics/IconShape$SimpleRectShape;FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    iput-object p1, p0, Lcom/android/launcher3/graphics/IconShape$SimpleRectShape$1;->this$0:Lcom/android/launcher3/graphics/IconShape$SimpleRectShape;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public shouldRemoveElevationDuringAnimation()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
