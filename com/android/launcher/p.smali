.class public final synthetic Lcom/android/launcher/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/p;->c:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/launcher/p;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;I)V
    .registers 5

    iput p3, p0, Lcom/android/launcher/p;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_e

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/p;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher/p;->c:Landroid/os/UserHandle;

    return-void

    :cond_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/p;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher/p;->c:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher/p;->a:I

    packed-switch v0, :pswitch_data_32

    goto :goto_27

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/launcher/p;->c:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/launcher/p;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/Launcher;->l(Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_11  #0x1
    iget-object v0, p0, Lcom/android/launcher/p;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/p;->c:Landroid/os/UserHandle;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/Launcher;->M(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_1c  #0x0
    iget-object v0, p0, Lcom/android/launcher/p;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/p;->c:Landroid/os/UserHandle;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/Launcher;->b0(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :goto_27
    iget-object v0, p0, Lcom/android/launcher/p;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/p;->c:Landroid/os/UserHandle;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/TaskIconCache;->c(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result p0

    return p0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1c  #00000000
        :pswitch_11  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
