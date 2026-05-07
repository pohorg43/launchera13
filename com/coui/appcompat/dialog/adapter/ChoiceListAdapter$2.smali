.class Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;I)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->b:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    iput p2, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    sget v0, Lcom/support/appcompat/R$id;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/coui/appcompat/checkbox/COUICheckBox;

    const/4 v1, 0x1

    if-eqz v0, :cond_51

    check-cast p1, Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getState()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_21

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    iget-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->b:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    iget-object p1, p1, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->f:[Z

    iget v0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->a:I

    aput-boolean v3, p1, v0

    goto :goto_49

    :cond_21
    iget-object v0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->b:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    iget v4, v0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->h:I

    if-lez v4, :cond_3e

    iget-object v0, v0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->f:[Z

    array-length v5, v0

    move v6, v3

    :goto_2b
    if-ge v3, v5, :cond_36

    aget-boolean v7, v0, v3

    if-eqz v7, :cond_33

    add-int/lit8 v6, v6, 0x1

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_36
    if-gt v4, v6, :cond_3e

    iget-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->b:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    :cond_3e
    invoke-virtual {p1, v2}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    iget-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->b:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    iget-object p1, p1, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->f:[Z

    iget v0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->a:I

    aput-boolean v1, p1, v0

    :goto_49
    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->b:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    sget p1, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->i:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_66

    :cond_51
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_66

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->b:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    sget p1, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->i:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    :goto_66
    return-void
.end method
