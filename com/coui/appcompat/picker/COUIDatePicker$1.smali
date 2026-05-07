.class Lcom/coui/appcompat/picker/COUIDatePicker$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/picker/COUIDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/picker/COUIDatePicker;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/picker/COUIDatePicker;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->a:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/coui/appcompat/picker/COUINumberPicker;II)V
    .registers 5

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->a:Lcom/coui/appcompat/picker/COUIDatePicker;

    iget-object v0, p2, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object p2, p2, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->g(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->a:Lcom/coui/appcompat/picker/COUIDatePicker;

    iget-object v0, p2, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-ne p1, v0, :cond_16

    iget-object p1, p2, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->d(II)V

    goto :goto_2b

    :cond_16
    iget-object v0, p2, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-ne p1, v0, :cond_21

    iget-object p1, p2, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->d(II)V

    goto :goto_2b

    :cond_21
    iget-object v0, p2, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-ne p1, v0, :cond_52

    iget-object p1, p2, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->d(II)V

    :goto_2b
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->a:Lcom/coui/appcompat/picker/COUIDatePicker;

    iget-object p2, p1, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-static {p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker;->a(Lcom/coui/appcompat/picker/COUIDatePicker;Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->a:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->h()V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->a:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->a:Lcom/coui/appcompat/picker/COUIDatePicker;

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->j:Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;

    if-eqz p1, :cond_51

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->getYear()I

    move-result p2

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->getMonth()I

    move-result p3

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->getDayOfMonth()I

    move-result v0

    invoke-interface {p1, p0, p2, p3, v0}, Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;->onDateChanged(Lcom/coui/appcompat/picker/COUIDatePicker;III)V

    :cond_51
    return-void

    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
