.class public Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$OutsideTouchListener;
    }
.end annotation


# static fields
.field public static final p:I

.field public static final q:I

.field public static final r:I


# instance fields
.field public a:Landroidx/appcompat/app/AlertDialog;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:[Ljava/lang/CharSequence;

.field public h:Landroid/content/DialogInterface$OnClickListener;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

.field public m:Z

.field public n:I

.field public o:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget v0, Lcom/support/appcompat/R$attr;->alertDialogStyle:I

    sput v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p:I

    sget v0, Lcom/support/appcompat/R$style;->AlertDialogBuildStyle:I

    sput v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->q:I

    sget v0, Lcom/support/appcompat/R$style;->Animation_COUI_Dialog_Alpha:I

    sput v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/support/appcompat/R$style;->COUIAlertDialog_Center:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->i:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->l:Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->m:Z

    iput p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n:I

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->o:Landroid/view/View;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder:[I

    sget v2, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p:I

    sget v3, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->q:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder_android_gravity:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->b:I

    sget v1, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder_windowAnimStyle:I

    sget v2, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->r:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->c:I

    sget v1, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder_contentMaxWidth:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->d:I

    sget v1, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder_customContentLayout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->e:I

    sget v1, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder_isNeedToAdaptMessageAndList:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->f:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public b(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k:Z

    instance-of v0, p1, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->l:Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->c()V

    :cond_13
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->l:Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    if-eqz v0, :cond_11

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->i:Z

    if-nez v1, :cond_e

    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    iput-boolean p0, v0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->e:Z

    :cond_11
    return-void
.end method

.method public create()Landroidx/appcompat/app/AlertDialog;
    .registers 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->m:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->e:I

    if-nez v0, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_c
    :goto_c
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k:Z

    if-eqz v0, :cond_11

    goto :goto_33

    :cond_11
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->g:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1a

    array-length v0, v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_33

    new-instance v0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->i:Z

    iget-boolean v4, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j:Z

    iget-object v5, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->g:[Ljava/lang/CharSequence;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;-><init>(Landroid/content/Context;ZZ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->b(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    :cond_33
    :goto_33
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->o:Landroid/view/View;

    const/4 v2, -0x2

    if-eqz v1, :cond_77

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    const/16 v3, 0x33

    invoke-virtual {v0, v3}, Landroid/view/Window;->setGravity(I)V

    sget v3, Lcom/support/appcompat/R$style;->Animation_COUI_PopupListWindow:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    new-instance v3, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;

    invoke-direct {v3, v0, v1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;-><init>(Landroid/view/Window;Landroid/view/View;)V

    new-instance v1, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$4;

    invoke-direct {v1, v0, v3}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$4;-><init>(Landroid/view/Window;Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$OnFirstLayoutListener;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_81

    :cond_77
    iget v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->b:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iget v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->c:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    :goto_81
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$OutsideTouchListener;

    iget-object v4, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {v3, v4}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$OutsideTouchListener;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n:I

    if-lez v3, :cond_99

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_99
    iget-object v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->o:Landroid/view/View;

    if-eqz v3, :cond_9e

    goto :goto_9f

    :cond_9e
    const/4 v2, -0x1

    :goto_9f
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public d(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->c()V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->c()V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public g(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public h(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public i(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public k(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->i:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->c()V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public l(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->i:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->c()V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public final m(Landroid/view/View;I)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p2, p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public n()V
    .registers 13

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->m:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    sget v1, Lcom/support/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1b
    sget v1, Lcom/support/appcompat/R$id;->custom:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_28

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_28
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$id;->listPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    const/4 v5, 0x0

    if-eqz v4, :cond_40

    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    goto :goto_41

    :cond_40
    move-object v4, v5

    :goto_41
    if-eqz v4, :cond_46

    invoke-virtual {v4, v2}, Landroid/view/View;->setScrollIndicators(I)V

    :cond_46
    iget-boolean v6, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_51

    if-eqz v3, :cond_51

    if-eqz v4, :cond_51

    move v6, v7

    goto :goto_52

    :cond_51
    move v6, v2

    :goto_52
    if-eqz v6, :cond_5d

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5d
    sget v4, Lcom/support/appcompat/R$id;->scrollView:I

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_91

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setScrollIndicators(I)V

    iget-boolean v4, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->f:Z

    if-eqz v4, :cond_76

    if-eqz v6, :cond_76

    invoke-virtual {p0, v0, v7}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->m(Landroid/view/View;I)V

    invoke-virtual {p0, v3, v7}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->m(Landroid/view/View;I)V

    :cond_76
    instance-of v3, v0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    if-eqz v3, :cond_91

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k:Z

    if-eqz v3, :cond_91

    check-cast v0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_builder_content_max_height_with_adapter:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->setMaxHeight(I)V

    :cond_91
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->d:I

    if-gtz v3, :cond_9c

    goto :goto_b9

    :cond_9c
    sget v3, Lcom/support/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    if-eqz v3, :cond_ae

    check-cast v0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    iget v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->d:I

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setMaxWidth(I)V

    goto :goto_b9

    :cond_ae
    instance-of v3, v0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;

    if-eqz v3, :cond_b9

    check-cast v0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;

    iget v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->d:I

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->setMaxWidth(I)V

    :cond_b9
    :goto_b9
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v3, Lcom/support/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    if-eqz v4, :cond_19c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_d3

    goto/16 :goto_19c

    :cond_d3
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object v6, v3

    check-cast v6, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    invoke-virtual {v6}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v8

    iget-object v9, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->g:[Ljava/lang/CharSequence;

    if-eqz v9, :cond_e9

    array-length v9, v9

    if-lez v9, :cond_e9

    move v9, v7

    goto :goto_ea

    :cond_e9
    move v9, v2

    :goto_ea
    iget-boolean v10, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->i:Z

    if-nez v10, :cond_ff

    iget-boolean v10, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j:Z

    if-nez v10, :cond_ff

    iget-boolean v10, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->m:Z

    if-nez v10, :cond_ff

    iget-boolean v10, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k:Z

    if-nez v10, :cond_ff

    if-eqz v9, :cond_fd

    goto :goto_ff

    :cond_fd
    move v9, v2

    goto :goto_100

    :cond_ff
    :goto_ff
    move v9, v7

    :goto_100
    if-ne v8, v7, :cond_104

    move v10, v7

    goto :goto_105

    :cond_104
    move v10, v2

    :goto_105
    const/16 v11, 0x11

    if-eq v4, v11, :cond_10f

    const/16 v11, 0x50

    if-eq v4, v11, :cond_10f

    move v4, v7

    goto :goto_110

    :cond_10f
    move v4, v2

    :goto_110
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    if-eqz v1, :cond_11e

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    :cond_11e
    if-eqz v0, :cond_124

    if-eqz v5, :cond_124

    move v0, v7

    goto :goto_125

    :cond_124
    move v0, v2

    :goto_125
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_16c

    if-lt v8, v7, :cond_16c

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_builder_with_button_min_height:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    if-eqz v0, :cond_16c

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    :cond_16c
    if-eqz v10, :cond_19c

    if-eqz v4, :cond_19c

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->o:Landroid/view/View;

    if-eqz v0, :cond_19c

    if-eqz v9, :cond_188

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/appcompat/R$dimen;->coui_free_alert_dialog_single_btn_padding_bottom_offset:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {v6, p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setSingleNeuBtnPaddingBottomOffsetIfHasAboveContent(I)V

    goto :goto_19c

    :cond_188
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/appcompat/R$dimen;->coui_free_alert_dialog_single_btn_padding_vertical:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {v6, p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setVerButVerPadding(I)V

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setVerButPaddingOffset(I)V

    :cond_19c
    :goto_19c
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->b(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 4

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->g:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->g:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public bridge synthetic setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->d(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    return-object p0
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->e(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k:Z

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    return-object p0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->l(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    return-object p0
.end method

.method public setView(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->m:Z

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->m:Z

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public show()Landroidx/appcompat/app/AlertDialog;
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->o:Landroid/view/View;

    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$id;->alert_title_scroll_view:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    if-nez v1, :cond_12

    goto :goto_1a

    :cond_12
    new-instance v2, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;

    invoke-direct {v2, p0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;-><init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n()V

    return-object v0
.end method
