.class public final synthetic Lcom/android/wm/shell/stagesplit/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/stagesplit/StageCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;I)V
    .registers 3

    iput p2, p0, Lcom/android/wm/shell/stagesplit/y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/y;->b:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/stagesplit/y;->a:I

    packed-switch v0, :pswitch_data_c

    :pswitch_5  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/y;->b:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-static {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->b(Lcom/android/wm/shell/stagesplit/StageCoordinator;)V

    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5  #00000000
    .end packed-switch
.end method
