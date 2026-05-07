.class Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/picker/COUIDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncompleteDate"
.end annotation


# instance fields
.field public a:Ljava/util/Calendar;

.field public b:Z


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p0

    if-le p1, p0, :cond_a

    return p0

    :cond_a
    return p1
.end method

.method public b(I)I
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b:Z

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_b
    const/4 v0, 0x5

    if-ne p1, v0, :cond_15

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_15
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1f

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_1f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_25

    const/high16 p0, -0x80000000

    return p0

    :cond_25
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public c(I)I
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p0

    return p0
.end method

.method public d(II)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-ne p1, v0, :cond_5a

    const/high16 v3, -0x80000000

    if-eq p2, v3, :cond_31

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b:Z

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v4, v0, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p2, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a(I)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/util/Calendar;->set(II)V

    goto :goto_8f

    :cond_31
    iput-boolean v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b:Z

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    const/16 v4, 0x7e4

    invoke-virtual {v3, p1, v4}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a(I)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/util/Calendar;->set(II)V

    goto :goto_8f

    :cond_5a
    if-ne p1, v1, :cond_81

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v4, v0, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a(I)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/util/Calendar;->set(II)V

    goto :goto_8f

    :cond_81
    if-ne p1, v2, :cond_8f

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    if-le p2, p1, :cond_8c

    move p2, p1

    :cond_8c
    invoke-virtual {p0, v2, p2}, Ljava/util/Calendar;->set(II)V

    :cond_8f
    :goto_8f
    return-void
.end method

.method public e(III)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->d(II)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->d(II)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->d(II)V

    return-void
.end method

.method public f(J)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b:Z

    return-void
.end method

.method public g(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-boolean p1, p1, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b:Z

    return-void
.end method
