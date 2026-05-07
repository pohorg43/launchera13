.class public Lcom/coui/appcompat/preference/COUIPreference;
.super Landroidx/preference/Preference;
.source ""

# interfaces
.implements Lcom/coui/appcompat/preference/COUICardSupportInterface;


# static fields
.field public static final CIRCLE:I = 0x0

.field public static final DEFAULT_RADIUS:I = 0xe

.field public static final DEFAULT_SCALE:I = 0x3

.field public static final FORCE_CLICK:I = 0x1

.field public static final FORCE_UNCLICK:I = 0x2

.field public static final MAX_RADIUS:I = 0x24

.field public static final MIN_RADIUS:I = 0xe

.field public static final NORMAL:I = 0x0

.field public static final NO_ICON_HEIGHT:I = 0x0

.field public static final ROUND:I = 0x1

.field public static final ratio:I = 0x6


# instance fields
.field private endRedDot:Landroid/view/View;

.field private iconRedDot:Landroid/view/View;

.field private mAssignment:Ljava/lang/CharSequence;

.field private mClickStyle:I

.field private mContext:Landroid/content/Context;

.field private mEndRedDotMode:I

.field private mEndRedDotNum:I

.field private mHasBorder:Z

.field private mIconRedDotMode:I

.field private mIconStyle:I

.field private mIsBackgroundAnimationEnabled:Z

.field private mIsCustom:Z

.field private mIsEnableClickSpan:Z

.field private mIsSelected:Z

.field private mIsSupportCardUse:Z

.field private mItemView:Landroid/view/View;

.field public mJumpRes:Landroid/graphics/drawable/Drawable;

.field private mRadius:I

.field private mShowDivider:Z

.field public mStatusText1:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->preferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mClickStyle:I

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsBackgroundAnimationEnabled:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsCustom:Z

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/support/appcompat/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIPreference_couiShowDivider:I

    iget-boolean p3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    sget p2, Lcom/support/appcompat/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsEnableClickSpan:Z

    sget p2, Lcom/support/appcompat/R$styleable;->COUIPreference_coui_jump_mark:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/support/appcompat/R$styleable;->COUIPreference_coui_jump_status1:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    sget p2, Lcom/support/appcompat/R$styleable;->COUIPreference_couiClickStyle:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mClickStyle:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIPreference_couiAssignment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignment:Ljava/lang/CharSequence;

    sget p2, Lcom/support/appcompat/R$styleable;->COUIPreference_couiIconStyle:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconStyle:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIPreference_hasBorder:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mHasBorder:Z

    sget p2, Lcom/support/appcompat/R$styleable;->COUIPreference_preference_icon_radius:I

    const/16 p3, 0xe

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRadius:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIPreference_iconRedDotMode:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconRedDotMode:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIPreference_endRedDotMode:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotMode:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIPreference_endRedDotNum:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotNum:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIPreference_isBackgroundAnimationEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsBackgroundAnimationEnabled:Z

    sget p2, Lcom/support/appcompat/R$styleable;->COUIPreference_isSupportCardUse:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSupportCardUse:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public changeEndRedDotNumberWithAnim(I)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Landroid/view/View;

    instance-of v1, v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v1, :cond_d

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotNum:I

    check-cast v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->b(I)V

    :cond_d
    return-void
.end method

.method public dismissEndRedDot()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Landroid/view/View;

    instance-of v1, v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Landroid/view/View;

    check-cast v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->c(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_17
    return-void
.end method

.method public dismissIconRedDot()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    instance-of v1, v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    check-cast v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->c(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_17
    return-void
.end method

.method public getAssignment()Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignment:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getBorderRectRadius(I)I
    .registers 3

    const/4 p0, 0x1

    const/16 v0, 0xe

    if-eq p1, p0, :cond_e

    const/4 p0, 0x2

    if-eq p1, p0, :cond_e

    const/4 p0, 0x3

    if-eq p1, p0, :cond_c

    goto :goto_e

    :cond_c
    const/16 v0, 0x10

    :cond_e
    :goto_e
    return v0
.end method

.method public getClickStyle()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mClickStyle:I

    return p0
.end method

.method public getEndRedDotMode()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotMode:I

    return p0
.end method

.method public getEndRedDotNum()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotNum:I

    return p0
.end method

.method public getIconRedDotMode()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconRedDotMode:I

    return p0
.end method

.method public getIconStyle()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconStyle:I

    return p0
.end method

.method public getIsSelected()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    return p0
.end method

.method public getStatusText1()Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isShowDivider()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    return p0
.end method

.method public isSupportCardUse()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSupportCardUse:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 13

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->a(Landroidx/preference/Preference;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->c(Landroid/view/View;I)V

    sget v0, Lcom/support/appcompat/R$id;->coui_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_25

    iget v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mClickStyle:I

    if-eq v3, v2, :cond_22

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1e

    goto :goto_25

    :cond_1e
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_25

    :cond_22
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_25
    :goto_25
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mItemView:Landroid/view/View;

    if-eqz v0, :cond_43

    instance-of v3, v0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    if-eqz v3, :cond_36

    check-cast v0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    iget-boolean v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsBackgroundAnimationEnabled:Z

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->setBackgroundAnimationEnabled(Z)V

    :cond_36
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mItemView:Landroid/view/View;

    instance-of v3, v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    if-eqz v3, :cond_43

    check-cast v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    iget-boolean v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setIsSelected(Z)V

    :cond_43
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreference;->getAssignment()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p1, v0, v3, v4}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->a(Landroidx/preference/PreferenceViewHolder;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRadius:I

    iget-boolean v8, p0, Lcom/coui/appcompat/preference/COUIPreference;->mHasBorder:Z

    iget v9, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconStyle:I

    iget-boolean v10, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsCustom:Z

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->b(Landroidx/preference/PreferenceViewHolder;Landroid/content/Context;IZIZ)V

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsEnableClickSpan:Z

    if-eqz v0, :cond_69

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->c(Landroid/content/Context;Landroidx/preference/PreferenceViewHolder;)V

    :cond_69
    sget v0, Lcom/support/appcompat/R$id;->img_layout:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v0, :cond_87

    if-eqz v3, :cond_84

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_87

    :cond_84
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_87
    :goto_87
    sget v0, Lcom/support/appcompat/R$id;->img_red_dot:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    sget v0, Lcom/support/appcompat/R$id;->jump_icon_red_dot:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Landroid/view/View;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    instance-of v0, p1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v0, :cond_bb

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconRedDotMode:I

    if-eqz v0, :cond_b8

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-boolean v2, v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->a:Z

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    check-cast p1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconRedDotMode:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_bb

    :cond_b8
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_bb
    :goto_bb
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Landroid/view/View;

    instance-of v0, p1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v0, :cond_e8

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotMode:I

    if-eqz v0, :cond_e5

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-boolean v2, v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->a:Z

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Landroid/view/View;

    check-cast p1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotMode:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Landroid/view/View;

    check-cast p1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotNum:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_e8

    :cond_e5
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_e8
    :goto_e8
    return-void
.end method

.method public setAssignment(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_d
    return-void
.end method

.method public setBackgroundAnimationEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsBackgroundAnimationEnabled:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsBackgroundAnimationEnabled:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_9
    return-void
.end method

.method public setBorderRectRadius(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRadius:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setClickStyle(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mClickStyle:I

    return-void
.end method

.method public setEndRedDotMode(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotMode:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setEndRedDotNum(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotNum:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setIconRedDotMode(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconRedDotMode:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setIconStyle(I)V
    .registers 3

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    :cond_5
    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconStyle:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_a
    return-void
.end method

.method public setIsCustomIconRadius(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsCustom:Z

    return-void
.end method

.method public setIsEnableClickSpan(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsEnableClickSpan:Z

    return-void
.end method

.method public setIsSupportCardUse(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSupportCardUse:Z

    return-void
.end method

.method public setJump(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->setJump(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setJump(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_9
    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_9
    return-void
.end method

.method public setSelectedState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    return-void
.end method

.method public setShowDivider(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_9
    return-void
.end method

.method public setStatusText1(Ljava/lang/CharSequence;)V
    .registers 3

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    if-nez v0, :cond_10

    :cond_6
    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_10
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_15
    return-void
.end method

.method public showEndRedDot()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Landroid/view/View;

    instance-of v1, v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Landroid/view/View;

    check-cast v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->c(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_19
    return-void
.end method

.method public showIconRedDot()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    instance-of v1, v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    check-cast v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->c(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_19
    return-void
.end method
