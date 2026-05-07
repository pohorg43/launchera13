.class public Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/picker/COUILunarDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncompleteDate"
.end annotation


# instance fields
.field public a:Ljava/util/Calendar;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    return-void
.end method


# virtual methods
.method public a(III)V
    .registers 10

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v3

    add-int/2addr v3, v0

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v5

    invoke-static {v1, v3, v5}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->a(III)[I

    move-result-object v1

    if-ne p1, v4, :cond_40

    iget-boolean p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    if-nez p1, :cond_3c

    const/16 p1, 0x1b

    if-le p2, p1, :cond_28

    if-ne p3, v0, :cond_28

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    sub-int/2addr v0, p2

    invoke-virtual {p0, v4, v0}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_12b

    :cond_28
    if-ne p2, v0, :cond_34

    if-le p3, p1, :cond_34

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    sub-int/2addr p3, v0

    invoke-virtual {p0, v4, p3}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_12b

    :cond_34
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    sub-int/2addr p3, p2

    invoke-virtual {p0, v4, p3}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_12b

    :cond_3c
    iput p3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->d:I

    goto/16 :goto_12b

    :cond_40
    const/4 p2, 0x0

    if-ne p1, v2, :cond_7b

    iget-boolean p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    if-nez p1, :cond_77

    add-int/2addr p3, v0

    aget p1, v1, p2

    invoke-static {p1}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->f(I)I

    move-result p1

    if-nez p1, :cond_52

    :goto_50
    move v0, p2

    goto :goto_5e

    :cond_52
    if-gt p3, p1, :cond_55

    goto :goto_50

    :cond_55
    add-int/lit8 v3, p1, 0x1

    if-ne p3, v3, :cond_5b

    move p3, p1

    goto :goto_5e

    :cond_5b
    add-int/lit8 p3, p3, -0x1

    goto :goto_50

    :goto_5e
    aget p1, v1, p2

    aget v2, v1, v2

    invoke-static {p1, p3, v2, v0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->c(IIIZ)I

    move-result p1

    aget p2, v1, p2

    invoke-static {p2, p3, p1, v0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->g(IIIZ)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_12b

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->e(J)V

    goto/16 :goto_12b

    :cond_77
    iput p3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->c:I

    goto/16 :goto_12b

    :cond_7b
    if-ne p1, v0, :cond_12b

    iget-boolean p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    const/4 v3, 0x3

    const/high16 v4, -0x80000000

    if-nez p1, :cond_ca

    if-eq p3, v4, :cond_ca

    aget p1, v1, v0

    aget v4, v1, v2

    aget v1, v1, v3

    invoke-static {p3}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->f(I)I

    move-result v3

    if-nez v1, :cond_96

    if-ne v3, p1, :cond_96

    move v1, v0

    goto :goto_97

    :cond_96
    move v1, p2

    :goto_97
    new-array v2, v2, [I

    aput p1, v2, p2

    xor-int/lit8 p1, v1, 0x1

    aput p1, v2, v0

    aget p1, v2, p2

    aget v1, v2, v0

    if-nez v1, :cond_a7

    move v1, v0

    goto :goto_a8

    :cond_a7
    move v1, p2

    :goto_a8
    invoke-static {p3, p1, v4, v1}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->c(IIIZ)I

    move-result p1

    aget v1, v2, p2

    aget v2, v2, v0

    if-nez v2, :cond_b3

    goto :goto_b4

    :cond_b3
    move v0, p2

    :goto_b4
    invoke-static {p3, v1, p1, v0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->g(IIIZ)Ljava/util/Date;

    move-result-object p1

    new-instance p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-direct {p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;-><init>()V

    if-eqz p1, :cond_c6

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->e(J)V

    :cond_c6
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->f(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)V

    goto :goto_12b

    :cond_ca
    const/16 v5, 0xc

    if-nez p1, :cond_f7

    if-ne p3, v4, :cond_f7

    iput-boolean v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    iput p3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b:I

    aget p1, v1, v0

    sub-int/2addr p1, v0

    aget p3, v1, v3

    if-ne p3, v0, :cond_dc

    goto :goto_dd

    :cond_dc
    move p2, v5

    :goto_dd
    add-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->c:I

    aget p1, v1, v2

    iput p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->d:I

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->e:I

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->f:I

    goto :goto_12b

    :cond_f7
    if-eqz p1, :cond_129

    if-eq p3, v4, :cond_129

    iput-boolean p2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    iput p3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b:I

    iget p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->c:I

    rem-int/lit8 v1, p1, 0xc

    add-int/2addr v1, v0

    div-int/2addr p1, v5

    if-lez p1, :cond_10e

    invoke-static {p3}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->f(I)I

    move-result p1

    if-ne p1, v1, :cond_10e

    goto :goto_10f

    :cond_10e
    move v0, p2

    :goto_10f
    iget p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b:I

    iget p2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->d:I

    invoke-static {p1, v1, p2, v0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->c(IIIZ)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->d:I

    iget p2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b:I

    invoke-static {p2, v1, p1, v0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->g(IIIZ)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_12b

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->e(J)V

    goto :goto_12b

    :cond_129
    iput p3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b:I

    :cond_12b
    :goto_12b
    return-void
.end method

.method public b(I)I
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_b
    const/4 v0, 0x5

    if-ne p1, v0, :cond_11

    iget p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->d:I

    return p0

    :cond_11
    const/4 v0, 0x2

    if-ne p1, v0, :cond_17

    iget p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->c:I

    return p0

    :cond_17
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1d

    iget p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b:I

    return p0

    :cond_1d
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public c()J
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(III)V
    .registers 6

    const/4 v0, 0x1

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_1a

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v1, v0, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    goto :goto_22

    :cond_1a
    iput v1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b:I

    iput p2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->c:I

    iput p3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->d:I

    iput-boolean v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    :goto_22
    return-void
.end method

.method public e(J)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    return-void
.end method

.method public f(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget v0, p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b:I

    iput v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b:I

    iget v0, p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->c:I

    iput v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->c:I

    iget v0, p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->d:I

    iput v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->d:I

    iget v0, p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->e:I

    iput v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->e:I

    iget v0, p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->f:I

    iput v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->f:I

    iget-boolean p1, p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    return-void
.end method
