.class public final synthetic Lcom/android/launcher3/x0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/OplusLauncherModel;

.field public final synthetic c:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusLauncherModel;Landroid/content/ComponentName;I)V
    .registers 5

    iput p3, p0, Lcom/android/launcher3/x0;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/x0;->b:Lcom/android/launcher3/OplusLauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/x0;->c:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher3/x0;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_18

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher3/x0;->b:Lcom/android/launcher3/OplusLauncherModel;

    iget-object p0, p0, Lcom/android/launcher3/x0;->c:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/android/launcher3/OplusLauncherModel;->j(Lcom/android/launcher3/OplusLauncherModel;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_f  #0x0
    iget-object v0, p0, Lcom/android/launcher3/x0;->b:Lcom/android/launcher3/OplusLauncherModel;

    iget-object p0, p0, Lcom/android/launcher3/x0;->c:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/android/launcher3/OplusLauncherModel;->o(Lcom/android/launcher3/OplusLauncherModel;Landroid/content/ComponentName;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p0

    return-object p0

    :goto_18
    iget-object v0, p0, Lcom/android/launcher3/x0;->b:Lcom/android/launcher3/OplusLauncherModel;

    iget-object p0, p0, Lcom/android/launcher3/x0;->c:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/android/launcher3/OplusLauncherModel;->h(Lcom/android/launcher3/OplusLauncherModel;Landroid/content/ComponentName;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
