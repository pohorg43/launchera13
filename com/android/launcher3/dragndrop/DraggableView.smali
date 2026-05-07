.class public interface abstract Lcom/android/launcher3/dragndrop/DraggableView;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DRAGGABLE_ICON:I = 0x0

.field public static final DRAGGABLE_WIDGET:I = 0x1


# direct methods
.method public static synthetic a(I)I
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DraggableView;->lambda$ofType$0(I)I

    move-result p0

    return p0
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/dragndrop/DraggableView;->lambda$prepareDrawDragView$1()V

    return-void
.end method

.method private static synthetic lambda$ofType$0(I)I
    .registers 1

    return p0
.end method

.method private static synthetic lambda$prepareDrawDragView$1()V
    .registers 0

    return-void
.end method

.method public static ofType(I)Lcom/android/launcher3/dragndrop/DraggableView;
    .registers 2

    new-instance v0, Lcom/android/launcher3/dragndrop/n;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/n;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getSourceVisualDragBounds(Landroid/graphics/Rect;)V
    .registers 2

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/DraggableView;->getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public abstract getViewType()I
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public prepareDrawDragView()Lcom/android/launcher3/util/SafeCloseable;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lcom/android/launcher3/dragndrop/o;->a:Lcom/android/launcher3/dragndrop/o;

    return-object p0
.end method
