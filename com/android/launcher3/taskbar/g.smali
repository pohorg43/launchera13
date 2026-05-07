.class public final synthetic Lcom/android/launcher3/taskbar/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/taskbar/g;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_c

    const/4 v0, 0x3

    if-eq p2, v0, :cond_c

    const/4 v0, 0x4

    :cond_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/g;->b:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/taskbar/g;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_24

    :pswitch_6  #0x4
    iget-object p0, p0, Lcom/android/launcher3/taskbar/g;->b:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->m(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    return-void

    :pswitch_c  #0x3
    iget-object p0, p0, Lcom/android/launcher3/taskbar/g;->b:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->t(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    return-void

    :pswitch_12  #0x2
    iget-object p0, p0, Lcom/android/launcher3/taskbar/g;->b:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->g(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    return-void

    :pswitch_18  #0x1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/g;->b:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->g(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    return-void

    :pswitch_1e  #0x0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/g;->b:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->g(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    return-void

    :goto_24
    iget-object p0, p0, Lcom/android/launcher3/taskbar/g;->b:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->m(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_18  #00000001
        :pswitch_12  #00000002
        :pswitch_c  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
