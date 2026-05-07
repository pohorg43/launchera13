.class public final synthetic Lcom/android/launcher/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic b:Lcom/android/launcher/m;

.field public static final synthetic c:Lcom/android/launcher/m;

.field public static final synthetic d:Lcom/android/launcher/m;

.field public static final synthetic e:Lcom/android/launcher/m;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/m;-><init>(I)V

    sput-object v0, Lcom/android/launcher/m;->b:Lcom/android/launcher/m;

    new-instance v0, Lcom/android/launcher/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher/m;-><init>(I)V

    sput-object v0, Lcom/android/launcher/m;->c:Lcom/android/launcher/m;

    new-instance v0, Lcom/android/launcher/m;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher/m;-><init>(I)V

    sput-object v0, Lcom/android/launcher/m;->d:Lcom/android/launcher/m;

    new-instance v0, Lcom/android/launcher/m;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher/m;-><init>(I)V

    sput-object v0, Lcom/android/launcher/m;->e:Lcom/android/launcher/m;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/launcher/m;->a:I

    packed-switch p0, :pswitch_data_1e

    goto :goto_18

    :pswitch_6  #0x2
    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->a(Landroid/view/MotionEvent;)V

    return-void

    :pswitch_c  #0x1
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {p1}, Lcom/android/launcher3/OplusWorkspace;->C(Lcom/android/launcher3/folder/FolderIcon;)V

    return-void

    :pswitch_12  #0x0
    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_18
    check-cast p1, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    invoke-virtual {p1}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->init()V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_c  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
