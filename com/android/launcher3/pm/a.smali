.class public final synthetic Lcom/android/launcher3/pm/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/pm/UserCache;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/pm/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pm/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/pm/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/PredictedAppIcon;Lcom/android/launcher3/util/SafeCloseable;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/pm/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pm/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/pm/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/pm/a;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/pm/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    iget-object p0, p0, Lcom/android/launcher3/pm/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/launcher3/pm/UserCache;->b(Lcom/android/launcher3/pm/UserCache;Ljava/lang/Runnable;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/launcher3/pm/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    iget-object p0, p0, Lcom/android/launcher3/pm/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/SafeCloseable;

    invoke-static {v0, p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->e(Lcom/android/launcher3/uioverrides/PredictedAppIcon;Lcom/android/launcher3/util/SafeCloseable;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
