.class Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/picker/COUINumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchEffectHandler"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/picker/COUINumberPicker;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/picker/COUINumberPicker;Landroid/os/Looper;)V
    .registers 3
    .param p1  # Lcom/coui/appcompat/picker/COUINumberPicker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1  # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c1

    if-eq v0, v2, :cond_7c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_d

    goto/16 :goto_ef

    :cond_d
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-boolean v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->Z0:Z

    if-eqz v3, :cond_6d

    iget-boolean v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->Y0:Z

    if-eqz v3, :cond_6d

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->b1:Ljava/lang/Object;

    if-nez v3, :cond_2c

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->a(Landroid/content/Context;)Lcom/oplus/os/LinearmotorVibrator;

    move-result-object v3

    iput-object v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->b1:Ljava/lang/Object;

    if-eqz v3, :cond_29

    move v3, v2

    goto :goto_2a

    :cond_29
    move v3, v1

    :goto_2a
    iput-boolean v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->Z0:Z

    :cond_2c
    iget-object v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->b1:Ljava/lang/Object;

    if-nez v3, :cond_31

    goto :goto_69

    :cond_31
    iget-object v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->O:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_48

    const/16 v4, 0x3e8

    iget v5, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->R:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->O:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    goto :goto_52

    :cond_48
    iget-object v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->j:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    :goto_52
    float-to-int v6, v3

    const/16 v3, 0x7d0

    if-le v6, v3, :cond_59

    move v5, v1

    goto :goto_5a

    :cond_59
    move v5, v2

    :goto_5a
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->b1:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lcom/oplus/os/LinearmotorVibrator;

    iget v7, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->R:I

    const/16 v8, 0x640

    const/16 v9, 0x4b0

    invoke-static/range {v4 .. v9}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->d(Lcom/oplus/os/LinearmotorVibrator;IIIII)V

    move v1, v2

    :goto_69
    if-eqz v1, :cond_6d

    goto/16 :goto_ef

    :cond_6d
    const/16 v1, 0x134

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    move-result v1

    if-nez v1, :cond_ef

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    goto/16 :goto_ef

    :cond_7c
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v0, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->f:Landroid/util/SparseArray;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_95

    return-void

    :cond_95
    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v1, v1, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ae

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v1, v1, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_ae
    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v2, v1, Lcom/coui/appcompat/picker/COUINumberPicker;->S:I

    if-nez v2, :cond_ef

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v0, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->u:Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;

    if-eqz v0, :cond_ef

    invoke-interface {v0}, Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;->a()V

    goto :goto_ef

    :cond_c1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-wide v5, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->i0:J

    sub-long/2addr v3, v5

    iget v5, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->j0:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_d2

    move v1, v2

    :cond_d2
    if-eqz v1, :cond_ef

    iget-object v2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->f0:Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->l0:I

    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-virtual/range {v2 .. v9}, Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;->c(Landroid/content/Context;IFFIIF)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->i0:J

    :cond_ef
    :goto_ef
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
