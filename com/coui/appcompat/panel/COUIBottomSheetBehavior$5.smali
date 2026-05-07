.class Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->startDragToHiddenAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;->b:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;->a:Landroid/view/View;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;->b:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$102(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;I)I

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;->b:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$100(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 4

    check-cast p1, Landroid/view/View;

    float-to-int p2, p2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;->b:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$100(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;->b:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->dispatchOnSlide(I)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;->b:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$102(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;I)I

    return-void
.end method
