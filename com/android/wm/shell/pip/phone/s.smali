.class public final synthetic Lcom/android/wm/shell/pip/phone/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

.field public final synthetic c:Z

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;ZII)V
    .registers 5

    iput p4, p0, Lcom/android/wm/shell/pip/phone/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/s;->b:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    iput-boolean p2, p0, Lcom/android/wm/shell/pip/phone/s;->c:Z

    iput p3, p0, Lcom/android/wm/shell/pip/phone/s;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/pip/phone/s;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/s;->b:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/s;->c:Z

    iget p0, p0, Lcom/android/wm/shell/pip/phone/s;->d:I

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->n(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;ZI)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/s;->b:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/s;->c:Z

    iget p0, p0, Lcom/android/wm/shell/pip/phone/s;->d:I

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->e(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;ZI)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
