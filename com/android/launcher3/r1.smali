.class public final synthetic Lcom/android/launcher3/r1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
.implements Lcom/android/launcher3/icons/BitmapRenderer;
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;
.implements Lcom/oplus/statistics/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusWorkspace;I)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/r1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/r1;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/Workspace;I)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/r1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/r1;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;I)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/r1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/r1;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/widget/WidgetSheetBehavior;I)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/r1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/r1;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/statistics/data/CommonBean;I)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/r1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/r1;->c:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;

    iget p0, p0, Lcom/android/launcher3/r1;->c:I

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->b(Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;ILandroid/graphics/Canvas;)V

    return-void
.end method

.method public evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher3/r1;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_11

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/OplusWorkspace;

    iget p0, p0, Lcom/android/launcher3/r1;->c:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->X(Lcom/android/launcher3/OplusWorkspace;ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :goto_11
    iget-object v0, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/Workspace;

    iget p0, p0, Lcom/android/launcher3/r1;->c:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/Workspace;->j(Lcom/android/launcher3/Workspace;ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/statistics/data/CommonBean;

    iget p0, p0, Lcom/android/launcher3/r1;->c:I

    invoke-static {v0, p0}, Lcom/oplus/statistics/OplusTrack;->d(Lcom/oplus/statistics/data/CommonBean;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public perform(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/widget/WidgetSheetBehavior;

    iget p0, p0, Lcom/android/launcher3/r1;->c:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->d(Lcom/android/launcher3/widget/WidgetSheetBehavior;ILandroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z

    move-result p0

    return p0
.end method
