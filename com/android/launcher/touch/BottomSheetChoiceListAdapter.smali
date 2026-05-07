.class public final Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$OnItemClickListener;,
        Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private checkboxStates:[Z

.field private final isMultiChoice:Z

.field private final mCheckBoxStates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private final mIsMultiChoice:Z

.field private final mItems:[Ljava/lang/CharSequence;

.field private final mLayoutResId:I

.field private mOnItemClickListener:Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$OnItemClickListener;

.field private final mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I)V
    .registers 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mCheckedItem:I

    iput-object p1, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mLayoutResId:I

    iput-object p3, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mSummaries:[Ljava/lang/CharSequence;

    iget-boolean p1, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->isMultiChoice:Z

    iput-boolean p1, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mIsMultiChoice:Z

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    iput p5, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mCheckedItem:I

    iget-object p1, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->checkboxStates:[Z

    if-nez p1, :cond_25

    goto :goto_28

    :cond_25
    invoke-direct {p0, p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->initCheckboxStates([Z)V

    :goto_28
    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;ILandroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->onBindViewHolder$lambda-0(Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;ILandroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getMContext$p(Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMIsMultiChoice$p(Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mIsMultiChoice:Z

    return p0
.end method

.method private final initCheckboxStates([Z)V
    .registers 6

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1a

    const/4 v1, 0x0

    :goto_6
    add-int/lit8 v2, v1, 0x1

    aget-boolean v3, p1, v1

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_15
    if-le v2, v0, :cond_18

    goto :goto_1a

    :cond_18
    move v1, v2

    goto :goto_6

    :cond_1a
    :goto_1a
    return-void
.end method

.method private static final onBindViewHolder$lambda-0(Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;ILandroid/view/View;)V
    .registers 8

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mIsMultiChoice:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    invoke-virtual {p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->getCheckBox()Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_28

    iget-object v0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_28
    iget-object v0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_31
    iget-object v0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v1, v2

    :cond_3e
    invoke-virtual {p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->getCheckBox()Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    goto :goto_7b

    :cond_49
    invoke-virtual {p0}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->getMCheckedItem()I

    move-result v0

    if-ne p2, v0, :cond_58

    iget-object p0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mOnItemClickListener:Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$OnItemClickListener;

    if-nez p0, :cond_54

    goto :goto_57

    :cond_54
    invoke-interface {p0, p3, p2, v1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;II)V

    :goto_57
    return-void

    :cond_58
    invoke-virtual {p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->getRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->getRadioButton()Landroid/widget/RadioButton;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->getMCheckedItem()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    invoke-virtual {p0, p2}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->setMCheckedItem(I)V

    :goto_7b
    iget-object p0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mOnItemClickListener:Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$OnItemClickListener;

    if-nez p0, :cond_80

    goto :goto_83

    :cond_80
    invoke-interface {p0, p3, p2, v1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;II)V

    :goto_83
    return-void
.end method


# virtual methods
.method public final getCheckboxStates()[Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->checkboxStates:[Z

    return-object p0
.end method

.method public final getItem(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    if-eqz p0, :cond_a

    array-length v0, p0

    if-ge p1, v0, :cond_a

    aget-object p0, p0, p1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return-object p0
.end method

.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

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

.method public final getMCheckedItem()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mCheckedItem:I

    return p0
.end method

.method public final getShelfDialogValueForCheckedItem()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mCheckedItem:I

    if-nez p0, :cond_6

    const/4 p0, 0x4

    return p0

    :cond_6
    const/4 p0, 0x6

    return p0
.end method

.method public final getSummary(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mSummaries:[Ljava/lang/CharSequence;

    if-eqz p0, :cond_a

    array-length v0, p0

    if-ge p1, v0, :cond_a

    aget-object p0, p0, p1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return-object p0
.end method

.method public final isMultiChoice()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->isMultiChoice:Z

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->onBindViewHolder(Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;I)V
    .registers 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mIsMultiChoice:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    invoke-virtual {p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->getCheckBox()Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    goto :goto_35

    :cond_24
    invoke-virtual {p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->getRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mCheckedItem:I

    if-ne v2, p2, :cond_31

    const/4 v2, 0x1

    goto :goto_32

    :cond_31
    move v2, v1

    :goto_32
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_35
    invoke-virtual {p0, p2}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->getItemText()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->getSummaryText()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->getItemText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->getItemText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7e

    :cond_70
    invoke-virtual {p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->getSummaryText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->getSummaryText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7e
    invoke-virtual {p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->getMLayout()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ly/a;

    invoke-direct {v1, p0, p1, p2}, Ly/a;-><init>(Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;
    .registers 5

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mLayoutResId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;

    const-string v0, "convertView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;-><init>(Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final setCheckboxStates([Z)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->checkboxStates:[Z

    return-void
.end method

.method public final setMCheckedItem(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mCheckedItem:I

    return-void
.end method

.method public final setOnItemClickListener(Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->mOnItemClickListener:Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$OnItemClickListener;

    return-void
.end method
