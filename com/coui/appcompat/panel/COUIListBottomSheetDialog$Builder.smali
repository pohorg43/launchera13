.class public Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:[Z

.field public b:I

.field public c:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public d:Landroid/content/DialogInterface$OnClickListener;

.field public e:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

.field public f:Landroid/view/View;

.field public g:Ljava/lang/CharSequence;

.field public h:Landroid/content/Context;

.field public i:[Ljava/lang/CharSequence;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->b:I

    new-instance v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    invoke-direct {v0}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->e:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->j:Z

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->h:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$layout;->coui_list_bottom_sheet_dialog_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a()Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->e:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    new-instance v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v3, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->h:Landroid/content/Context;

    sget v4, Lcom/support/appcompat/R$style;->DefaultBottomSheetDialog:I

    invoke-direct {v2, v3, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, v1, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->e:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    iget-object v1, v1, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v2, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->e:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    iget-object v1, v1, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->R:Z

    iput v2, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->S:I

    sget v3, Lcom/support/appcompat/R$id;->select_dialog_listview:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/COUIRecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/COUIPanelPreferenceLinearLayoutManager;

    iget-object v4, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->h:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/COUIPanelPreferenceLinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v3, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->e:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    iget-object v3, v3, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    sget v5, Lcom/support/appcompat/R$id;->toolbar:I

    invoke-virtual {v3, v5}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/toolbar/COUIToolbar;

    iget-object v5, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->g:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    iget-boolean v3, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->j:Z

    if-eqz v3, :cond_6d

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v2, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    iget-object v5, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->h:Landroid/content/Context;

    sget v6, Lcom/support/appcompat/R$layout;->coui_select_dialog_multichoice:I

    iget-object v7, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->i:[Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, -0x1

    iget-object v10, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->a:[Z

    const/4 v11, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I[ZZ)V

    goto :goto_83

    :cond_6d
    new-instance v2, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    iget-object v13, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->h:Landroid/content/Context;

    sget v14, Lcom/support/appcompat/R$layout;->coui_select_dialog_singlechoice:I

    iget-object v15, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->i:[Ljava/lang/CharSequence;

    const/16 v16, 0x0

    iget v3, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->b:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v2

    move/from16 v17, v3

    invoke-direct/range {v12 .. v19}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I[ZZ)V

    :goto_83
    iget-object v3, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->e:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    iget-object v3, v3, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v3, v3, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDragView()Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder$1;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder$1;-><init>(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;)V

    iput-object v1, v2, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->g:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->e:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    return-object v0
.end method

.method public b(IILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->i:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->d:Landroid/content/DialogInterface$OnClickListener;

    iput p2, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->b:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->j:Z

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->i:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->a:[Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->j:Z

    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->c:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 4

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->i:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->a:[Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->j:Z

    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->c:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->b(IILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 4

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->i:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->d:Landroid/content/DialogInterface$OnClickListener;

    iput p2, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->b:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->j:Z

    return-object p0
.end method

.method public setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->h:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->g:Ljava/lang/CharSequence;

    return-object p0
.end method
