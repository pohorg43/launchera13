.class public final synthetic Lcom/android/quickstep/a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILcom/android/quickstep/OplusBaseRecentsModel;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/a0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/a0;->b:I

    iput-object p2, p0, Lcom/android/quickstep/a0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/quickstep/a0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/shortcuts/OplusExternalScreenShortcut;ILandroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/a0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/a0;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/a0;->b:I

    iput-object p3, p0, Lcom/android/quickstep/a0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/quickstep/a0;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_16

    :pswitch_6  #0x0
    iget v0, p0, Lcom/android/quickstep/a0;->b:I

    iget-object v1, p0, Lcom/android/quickstep/a0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/quickstep/OplusBaseRecentsModel;

    iget-object p0, p0, Lcom/android/quickstep/a0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/OplusBaseRecentsModel;->b(ILcom/android/quickstep/OplusBaseRecentsModel;Lcom/android/systemui/shared/recents/model/ThumbnailData;Ljava/util/ArrayList;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/quickstep/a0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/shortcuts/OplusExternalScreenShortcut;

    iget v1, p0, Lcom/android/quickstep/a0;->b:I

    iget-object p0, p0, Lcom/android/quickstep/a0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p0, p1}, Lcom/oplus/quickstep/shortcuts/OplusExternalScreenShortcut;->j(Lcom/oplus/quickstep/shortcuts/OplusExternalScreenShortcut;ILandroid/os/Bundle;Ljava/lang/Boolean;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
