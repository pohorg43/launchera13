.class public final synthetic Lcom/android/launcher3/widget/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/widget/LauncherAppWidgetHost;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/LauncherAppWidgetHost;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/widget/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/d;->b:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/widget/d;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/widget/d;->b:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->c(Lcom/android/launcher3/widget/LauncherAppWidgetHost;Ljava/lang/Object;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/android/launcher3/widget/d;->b:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->b(Lcom/android/launcher3/widget/LauncherAppWidgetHost;Ljava/lang/Object;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
