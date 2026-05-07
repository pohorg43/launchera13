.class public final synthetic Lcom/android/launcher3/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/q;

.field public static final synthetic c:Lcom/android/launcher3/q;

.field public static final synthetic d:Lcom/android/launcher3/q;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/q;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/q;->b:Lcom/android/launcher3/q;

    new-instance v0, Lcom/android/launcher3/q;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/q;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/q;->c:Lcom/android/launcher3/q;

    new-instance v0, Lcom/android/launcher3/q;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/q;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/q;->d:Lcom/android/launcher3/q;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    iget p0, p0, Lcom/android/launcher3/q;->a:I

    packed-switch p0, :pswitch_data_1c

    goto :goto_14

    :pswitch_6  #0x1
    check-cast p1, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderPagedView;->h(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

    move-result p0

    return p0

    :pswitch_d  #0x0
    check-cast p1, Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0

    :goto_14
    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    return p0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_d  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
