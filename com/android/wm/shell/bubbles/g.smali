.class public final synthetic Lcom/android/wm/shell/bubbles/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/g;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/bubbles/g;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_11

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->m(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/util/List;)Ly2/p;

    move-result-object p0

    return-object p0

    :goto_11
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->d(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;Ljava/lang/Boolean;)Ly2/p;

    move-result-object p0

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
