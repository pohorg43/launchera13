.class public final synthetic Lcom/android/quickstep/views/a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/IconView;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/a0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/a0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/views/a0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/views/a0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/a0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/views/a0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    iget v0, p0, Lcom/android/quickstep/views/a0;->a:I

    packed-switch v0, :pswitch_data_20

    goto :goto_13

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/quickstep/views/a0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    iget-object p0, p0, Lcom/android/quickstep/views/a0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/IconView;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/views/TaskView;->f(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/IconView;Landroid/view/View;)Z

    move-result p0

    return p0

    :goto_13
    iget-object v0, p0, Lcom/android/quickstep/views/a0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    iget-object p0, p0, Lcom/android/quickstep/views/a0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    invoke-static {v0, p0, p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->a(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
