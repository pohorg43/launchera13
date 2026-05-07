.class Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;,
        Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:[Ljava/lang/CharSequence;

.field public c:[Ljava/lang/CharSequence;

.field public d:I

.field public e:Z

.field public f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I[ZZ)V
    .registers 9

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->h:I

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->a:Landroid/content/Context;

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->d:I

    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->b:[Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->c:[Ljava/lang/CharSequence;

    iput-boolean p7, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->e:Z

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->f:Ljava/util/HashSet;

    iput p5, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->h:I

    if-eqz p6, :cond_2f

    const/4 p1, 0x0

    :goto_1c
    array-length p2, p6

    if-ge p1, p2, :cond_2f

    aget-boolean p2, p6, p1

    if-eqz p2, :cond_2c

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->f:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    :cond_2f
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->b:[Ljava/lang/CharSequence;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_7

    :cond_6
    array-length p0, p0

    :goto_7
    return p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 8
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->f:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x2

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    iget-object v2, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->c:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    goto :goto_28

    :cond_1c
    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->d:Landroid/widget/RadioButton;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->h:I

    if-ne v2, p2, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    move v2, v1

    :goto_25
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_28
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->b:[Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    array-length v3, v0

    if-lt p2, v3, :cond_31

    goto :goto_34

    :cond_31
    aget-object v0, v0, p2

    goto :goto_35

    :cond_34
    :goto_34
    move-object v0, v2

    :goto_35
    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->c:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_3f

    array-length v4, v3

    if-lt p2, v4, :cond_3d

    goto :goto_3f

    :cond_3d
    aget-object v2, v3, p2

    :cond_3f
    :goto_3f
    iget-object v3, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5c

    :cond_52
    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5c
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->g:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

    if-eqz v0, :cond_6a

    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->e:Landroid/view/View;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6a
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->d:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;Landroid/view/View;)V

    return-object p2
.end method
