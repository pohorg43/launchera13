.class public final synthetic Lcom/android/launcher/folder/download/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Ljava/util/List;I)V
    .registers 8

    iput p6, p0, Lcom/android/launcher/folder/download/c;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/c;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/folder/download/c;->c:I

    iput p3, p0, Lcom/android/launcher/folder/download/c;->d:I

    iput-object p4, p0, Lcom/android/launcher/folder/download/c;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher/folder/download/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 7

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/folder/download/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/folder/download/c;->e:Ljava/lang/Object;

    iput p3, p0, Lcom/android/launcher/folder/download/c;->c:I

    iput p4, p0, Lcom/android/launcher/folder/download/c;->d:I

    iput-object p5, p0, Lcom/android/launcher/folder/download/c;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/launcher/folder/download/c;->a:I

    packed-switch v0, :pswitch_data_42

    goto :goto_2e

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher/folder/download/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/folder/download/ReportController;

    iget v1, p0, Lcom/android/launcher/folder/download/c;->c:I

    iget v2, p0, Lcom/android/launcher/folder/download/c;->d:I

    iget-object v3, p0, Lcom/android/launcher/folder/download/c;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/folder/download/c;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher/folder/download/ReportController;->c(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Ljava/util/List;)V

    return-void

    :pswitch_1a  #0x0
    iget-object v0, p0, Lcom/android/launcher/folder/download/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/folder/download/ReportController;

    iget v1, p0, Lcom/android/launcher/folder/download/c;->c:I

    iget v2, p0, Lcom/android/launcher/folder/download/c;->d:I

    iget-object v3, p0, Lcom/android/launcher/folder/download/c;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/folder/download/c;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher/folder/download/ReportController;->d(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Ljava/util/List;)V

    return-void

    :goto_2e
    iget-object v0, p0, Lcom/android/launcher/folder/download/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget-object v1, p0, Lcom/android/launcher/folder/download/c;->e:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget v2, p0, Lcom/android/launcher/folder/download/c;->c:I

    iget v3, p0, Lcom/android/launcher/folder/download/c;->d:I

    iget-object p0, p0, Lcom/android/launcher/folder/download/c;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->j0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
