.class public final synthetic Lcom/android/launcher3/folder/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/folder/OplusFolder;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/OplusFolder;ZI)V
    .registers 5

    iput p3, p0, Lcom/android/launcher3/folder/l;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/l;->b:Lcom/android/launcher3/folder/OplusFolder;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/l;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/folder/l;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher3/folder/l;->b:Lcom/android/launcher3/folder/OplusFolder;

    iget-boolean p0, p0, Lcom/android/launcher3/folder/l;->c:Z

    invoke-static {v0, p0}, Lcom/android/launcher3/folder/OplusFolder;->q(Lcom/android/launcher3/folder/OplusFolder;Z)V

    return-void

    :pswitch_e  #0x0
    iget-object v0, p0, Lcom/android/launcher3/folder/l;->b:Lcom/android/launcher3/folder/OplusFolder;

    iget-boolean p0, p0, Lcom/android/launcher3/folder/l;->c:Z

    invoke-static {v0, p0}, Lcom/android/launcher3/folder/OplusFolder;->t(Lcom/android/launcher3/folder/OplusFolder;Z)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/launcher3/folder/l;->b:Lcom/android/launcher3/folder/OplusFolder;

    iget-boolean p0, p0, Lcom/android/launcher3/folder/l;->c:Z

    invoke-static {v0, p0}, Lcom/android/launcher3/folder/OplusFolder;->m(Lcom/android/launcher3/folder/OplusFolder;Z)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
