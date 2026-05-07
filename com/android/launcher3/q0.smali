.class public final synthetic Lcom/android/launcher3/q0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/LauncherProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherProvider;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/q0;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/q0;->b:Lcom/android/launcher3/LauncherProvider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher3/q0;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_14

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher3/q0;->b:Lcom/android/launcher3/LauncherProvider;

    invoke-static {p0}, Lcom/android/launcher3/LauncherProvider;->d(Lcom/android/launcher3/LauncherProvider;)Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-result-object p0

    return-object p0

    :pswitch_d  #0x0
    iget-object p0, p0, Lcom/android/launcher3/q0;->b:Lcom/android/launcher3/LauncherProvider;

    invoke-static {p0}, Lcom/android/launcher3/LauncherProvider;->c(Lcom/android/launcher3/LauncherProvider;)Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-result-object p0

    return-object p0

    :goto_14
    iget-object p0, p0, Lcom/android/launcher3/q0;->b:Lcom/android/launcher3/LauncherProvider;

    invoke-static {p0}, Lcom/android/launcher3/LauncherProvider;->e(Lcom/android/launcher3/LauncherProvider;)Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_d  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
