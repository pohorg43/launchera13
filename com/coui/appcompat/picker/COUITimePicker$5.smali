.class Lcom/coui/appcompat/picker/COUITimePicker$5;
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

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$5;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/coui/appcompat/picker/COUINumberPicker;II)V
    .registers 4

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$5;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    sget p3, Lcom/coui/appcompat/picker/COUITimePicker;->I:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$5;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    iget-object p2, p2, Lcom/coui/appcompat/picker/COUITimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result p1

    const/16 p3, 0xc

    invoke-virtual {p2, p3, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker$5;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->H:Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;

    if-eqz p1, :cond_1f

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->b:Ljava/util/Calendar;

    invoke-interface {p1, p0, p2}, Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;->a(Landroid/view/View;Ljava/util/Calendar;)V

    :cond_1f
    return-void
.end method
