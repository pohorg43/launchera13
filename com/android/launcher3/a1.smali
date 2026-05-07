.class public final synthetic Lcom/android/launcher3/a1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/OplusLauncherProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusLauncherProvider;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/a1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/a1;->b:Lcom/android/launcher3/OplusLauncherProvider;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/a1;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_13

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/a1;->b:Lcom/android/launcher3/OplusLauncherProvider;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusLauncherProvider;->g(Lcom/android/launcher3/OplusLauncherProvider;Ljava/lang/String;)Z

    move-result p0

    :goto_e
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_13
    iget-object p0, p0, Lcom/android/launcher3/a1;->b:Lcom/android/launcher3/OplusLauncherProvider;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusLauncherProvider;->j(Lcom/android/launcher3/OplusLauncherProvider;Ljava/lang/String;)Z

    move-result p0

    goto :goto_e

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
