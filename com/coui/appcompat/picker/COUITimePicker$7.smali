.class Lcom/coui/appcompat/picker/COUITimePicker$7;
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

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$7;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/coui/appcompat/picker/COUINumberPicker;II)V
    .registers 5

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$7;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result p1

    iget-object p3, p2, Lcom/coui/appcompat/picker/COUITimePicker;->a:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p3, p1

    :try_start_c
    iget-object p2, p2, Lcom/coui/appcompat/picker/COUITimePicker;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_12
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_12} :catch_13

    goto :goto_18

    :catch_13
    move-exception p1

    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_18
    if-eqz p1, :cond_4b

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$7;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    iget-object p2, p2, Lcom/coui/appcompat/picker/COUITimePicker;->b:Ljava/util/Calendar;

    const/4 p3, 0x2

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Ljava/util/Calendar;->set(II)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$7;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    iget-object p2, p2, Lcom/coui/appcompat/picker/COUITimePicker;->b:Ljava/util/Calendar;

    const/4 p3, 0x5

    invoke-virtual {p1}, Ljava/util/Date;->getDate()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Ljava/util/Calendar;->set(II)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$7;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    iget-object p2, p2, Lcom/coui/appcompat/picker/COUITimePicker;->b:Ljava/util/Calendar;

    const/4 p3, 0x1

    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result p1

    add-int/lit16 p1, p1, 0x76c

    invoke-virtual {p2, p3, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker$7;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->H:Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;

    if-eqz p1, :cond_4b

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->b:Ljava/util/Calendar;

    invoke-interface {p1, p0, p2}, Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;->a(Landroid/view/View;Ljava/util/Calendar;)V

    :cond_4b
    return-void
.end method
