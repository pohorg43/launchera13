.class Lcom/coui/appcompat/picker/COUILunarDatePicker$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/picker/COUILunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/picker/COUILunarDatePicker;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/picker/COUILunarDatePicker;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/coui/appcompat/picker/COUINumberPicker;II)V
    .registers 10

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    iget-object v0, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->f(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    iget-object v0, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    iget-object v2, v2, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    iget-object v4, v4, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v4

    invoke-static {v0, v2, v4}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->a(III)[I

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    iget-object v2, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-ne p1, v2, :cond_34

    iget-object p1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {p1, v5, p2, p3}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a(III)V

    goto :goto_47

    :cond_34
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-ne p1, v2, :cond_3e

    iget-object p1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {p1, v3, p2, p3}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a(III)V

    goto :goto_47

    :cond_3e
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-ne p1, v2, :cond_6e

    iget-object p1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {p1, v1, p2, p3}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a(III)V

    :goto_47
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    iget-object p2, p1, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-static {p1, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->a(Lcom/coui/appcompat/picker/COUILunarDatePicker;Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->f()V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->f:Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;

    if-eqz p1, :cond_6d

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getYear()I

    move-result p2

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getMonth()I

    move-result p3

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getDayOfMonth()I

    move-result v0

    invoke-interface {p1, p0, p2, p3, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;->a(Lcom/coui/appcompat/picker/COUILunarDatePicker;III)V

    :cond_6d
    return-void

    :cond_6e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
