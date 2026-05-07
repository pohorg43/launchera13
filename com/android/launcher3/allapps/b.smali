.class public final synthetic Lcom/android/launcher3/allapps/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/model/data/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/AppInfo;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/allapps/b;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_15

    const/4 v0, 0x2

    if-eq p2, v0, :cond_f

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/b;->b:Lcom/android/launcher3/model/data/AppInfo;

    return-void

    :cond_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/b;->b:Lcom/android/launcher3/model/data/AppInfo;

    return-void

    :cond_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/b;->b:Lcom/android/launcher3/model/data/AppInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/allapps/b;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/launcher3/allapps/b;->b:Lcom/android/launcher3/model/data/AppInfo;

    check-cast p1, Lcom/android/launcher3/iconrender/IIconRenderer;

    invoke-static {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->i(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/iconrender/IIconRenderer;)V

    return-void

    :pswitch_e  #0x1
    iget-object p0, p0, Lcom/android/launcher3/allapps/b;->b:Lcom/android/launcher3/model/data/AppInfo;

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->e(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/BubbleTextView;)V

    return-void

    :pswitch_16  #0x0
    iget-object p0, p0, Lcom/android/launcher3/allapps/b;->b:Lcom/android/launcher3/model/data/AppInfo;

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->a(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/BubbleTextView;)V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/launcher3/allapps/b;->b:Lcom/android/launcher3/model/data/AppInfo;

    check-cast p1, Lcom/android/launcher3/iconrender/ITitleRenderer;

    invoke-static {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->c(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/iconrender/ITitleRenderer;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
