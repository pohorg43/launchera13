.class public final synthetic Lcom/android/launcher/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/Launcher;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILcom/android/launcher/Launcher;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher/y;->c:I

    iput-object p2, p0, Lcom/android/launcher/y;->b:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;II)V
    .registers 5

    iput p3, p0, Lcom/android/launcher/y;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_9

    const/4 v0, 0x2

    if-eq p3, v0, :cond_9

    const/4 v0, 0x3

    :cond_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/y;->b:Lcom/android/launcher/Launcher;

    iput p2, p0, Lcom/android/launcher/y;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/y;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_2e

    :pswitch_6  #0x4
    iget v0, p0, Lcom/android/launcher/y;->c:I

    iget-object p0, p0, Lcom/android/launcher/y;->b:Lcom/android/launcher/Launcher;

    invoke-static {v0, p0}, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;->a(ILcom/android/launcher/Launcher;)V

    return-void

    :pswitch_e  #0x3
    iget-object v0, p0, Lcom/android/launcher/y;->b:Lcom/android/launcher/Launcher;

    iget p0, p0, Lcom/android/launcher/y;->c:I

    invoke-static {v0, p0}, Lcom/android/launcher/Launcher;->s0(Lcom/android/launcher/Launcher;I)V

    return-void

    :pswitch_16  #0x2
    iget-object v0, p0, Lcom/android/launcher/y;->b:Lcom/android/launcher/Launcher;

    iget p0, p0, Lcom/android/launcher/y;->c:I

    invoke-static {v0, p0}, Lcom/android/launcher/Launcher;->U(Lcom/android/launcher/Launcher;I)V

    return-void

    :pswitch_1e  #0x1
    iget-object v0, p0, Lcom/android/launcher/y;->b:Lcom/android/launcher/Launcher;

    iget p0, p0, Lcom/android/launcher/y;->c:I

    invoke-static {v0, p0}, Lcom/android/launcher/Launcher;->h0(Lcom/android/launcher/Launcher;I)V

    return-void

    :pswitch_26  #0x0
    iget-object v0, p0, Lcom/android/launcher/y;->b:Lcom/android/launcher/Launcher;

    iget p0, p0, Lcom/android/launcher/y;->c:I

    invoke-static {v0, p0}, Lcom/android/launcher/Launcher;->C(Lcom/android/launcher/Launcher;I)V

    return-void

    :goto_2e
    iget-object v0, p0, Lcom/android/launcher/y;->b:Lcom/android/launcher/Launcher;

    iget p0, p0, Lcom/android/launcher/y;->c:I

    invoke-static {v0, p0}, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->b(Lcom/android/launcher/Launcher;I)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_1e  #00000001
        :pswitch_16  #00000002
        :pswitch_e  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
