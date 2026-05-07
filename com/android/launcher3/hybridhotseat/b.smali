.class public final synthetic Lcom/android/launcher3/hybridhotseat/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/hybridhotseat/HotseatEduController;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/hybridhotseat/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/hybridhotseat/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/IntSet;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/hybridhotseat/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/hybridhotseat/b;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_18

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/IntSet;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/ModelUtils;->c(Lcom/android/launcher3/util/IntSet;I)Z

    move-result p0

    return p0

    :pswitch_f  #0x0
    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;

    invoke-static {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->b(Lcom/android/launcher3/hybridhotseat/HotseatEduController;I)Z

    move-result p0

    return p0

    :goto_18
    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->b(Lcom/android/launcher3/taskbar/TaskbarStashController;I)Z

    move-result p0

    return p0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
