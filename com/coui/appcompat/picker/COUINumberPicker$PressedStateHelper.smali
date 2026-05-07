.class Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/picker/COUINumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PressedStateHelper"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lcom/coui/appcompat/picker/COUINumberPicker;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/picker/COUINumberPicker;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->b:I

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->a:I

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-boolean v2, v1, Lcom/coui/appcompat/picker/COUINumberPicker;->a0:Z

    if-eqz v2, :cond_21

    iput-boolean v0, v1, Lcom/coui/appcompat/picker/COUINumberPicker;->a0:Z

    iget v2, v1, Lcom/coui/appcompat/picker/COUINumberPicker;->V:I

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    :cond_21
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-boolean v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->b0:Z

    return-void
.end method

.method public run()V
    .registers 7

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_58

    if-eq v0, v1, :cond_b

    goto/16 :goto_82

    :cond_b
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->a:I

    if-eq v0, v3, :cond_33

    if-eq v0, v1, :cond_12

    goto :goto_82

    :cond_12
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-boolean v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->b0:Z

    if-nez v1, :cond_20

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, p0, v4, v5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_20
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-boolean v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->b0:Z

    xor-int/2addr v1, v3

    iput-boolean v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->b0:Z

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->U:I

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_82

    :cond_33
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-boolean v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->a0:Z

    if-nez v1, :cond_41

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, p0, v4, v5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_41
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-boolean v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->a0:Z

    xor-int/2addr v1, v3

    iput-boolean v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->a0:Z

    iget v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->V:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_82

    :cond_58
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->a:I

    if-eq v0, v3, :cond_6f

    if-eq v0, v1, :cond_5f

    goto :goto_82

    :cond_5f
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-boolean v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->b0:Z

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->U:I

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_82

    :cond_6f
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-boolean v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->a0:Z

    iget v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->V:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    :goto_82
    return-void
.end method
