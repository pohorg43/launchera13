.class public final synthetic Lcom/android/launcher3/dragndrop/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/dragndrop/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/dragndrop/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/b;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/b;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/dragndrop/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/dragndrop/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dragndrop/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/b;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/dragndrop/b;->a:I

    packed-switch v0, :pswitch_data_4c

    goto :goto_3e

    :pswitch_6  #0x3
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/b;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/b;->d:Ljava/lang/Object;

    check-cast p0, Landroid/os/UserHandle;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->a(Lcom/android/launcher3/Launcher;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_14  #0x2
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/b;->d:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/b;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->c(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_22  #0x1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/dragndrop/AddItemActivity;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/b;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/b;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->h(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_30  #0x0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/dragndrop/AddItemActivity;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/b;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/b;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->c(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void

    :goto_3e
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/b;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/b;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher3/util/OplusMBAStartActivityHelper;->c(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_30  #00000000
        :pswitch_22  #00000001
        :pswitch_14  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
