.class Lcom/coui/appcompat/picker/COUITimePicker$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/picker/COUITimePicker;->getTimePicker()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/picker/COUITimePicker;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/picker/COUITimePicker;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/coui/appcompat/picker/COUINumberPicker;II)V
    .registers 7

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    sget p3, Lcom/coui/appcompat/picker/COUITimePicker;->I:I

    invoke-virtual {p2}, Lcom/coui/appcompat/picker/COUITimePicker;->b()Z

    move-result p2

    const/4 p3, 0x1

    const/16 v0, 0xc

    const/16 v1, 0xb

    if-nez p2, :cond_34

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    iget p2, p2, Lcom/coui/appcompat/picker/COUITimePicker;->v:I

    if-nez p2, :cond_16

    goto :goto_34

    :cond_16
    if-ne p2, p3, :cond_3f

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result p2

    if-eq p2, v0, :cond_2b

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    iget-object p2, p2, Lcom/coui/appcompat/picker/COUITimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2, v1, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_3f

    :cond_2b
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    iget-object p2, p2, Lcom/coui/appcompat/picker/COUITimePicker;->b:Ljava/util/Calendar;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_3f

    :cond_34
    :goto_34
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    iget-object p2, p2, Lcom/coui/appcompat/picker/COUITimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/util/Calendar;->set(II)V

    :cond_3f
    :goto_3f
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-virtual {p2}, Lcom/coui/appcompat/picker/COUITimePicker;->b()Z

    move-result p2

    if-nez p2, :cond_59

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result p1

    if-ne p1, v0, :cond_59

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    iget p2, p1, Lcom/coui/appcompat/picker/COUITimePicker;->v:I

    sub-int/2addr p3, p2

    iput p3, p1, Lcom/coui/appcompat/picker/COUITimePicker;->v:I

    iget-object p1, p1, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1, p3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    :cond_59
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->H:Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;

    if-eqz p1, :cond_64

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->b:Ljava/util/Calendar;

    invoke-interface {p1, p0, p2}, Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;->a(Landroid/view/View;Ljava/util/Calendar;)V

    :cond_64
    return-void
.end method
