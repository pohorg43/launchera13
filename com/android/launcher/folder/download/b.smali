.class public final synthetic Lcom/android/launcher/folder/download/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/folder/download/ReportController;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/android/launcher/folder/recommend/bean/AppStatBean;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Lcom/android/launcher/folder/recommend/bean/AppStatBean;I)V
    .registers 8

    iput p6, p0, Lcom/android/launcher/folder/download/b;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/b;->b:Lcom/android/launcher/folder/download/ReportController;

    iput p2, p0, Lcom/android/launcher/folder/download/b;->c:I

    iput p3, p0, Lcom/android/launcher/folder/download/b;->d:I

    iput-object p4, p0, Lcom/android/launcher/folder/download/b;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/launcher/folder/download/b;->f:Lcom/android/launcher/folder/recommend/bean/AppStatBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/launcher/folder/download/b;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_14

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/folder/download/b;->b:Lcom/android/launcher/folder/download/ReportController;

    iget v1, p0, Lcom/android/launcher/folder/download/b;->c:I

    iget v2, p0, Lcom/android/launcher/folder/download/b;->d:I

    iget-object v3, p0, Lcom/android/launcher/folder/download/b;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/folder/download/b;->f:Lcom/android/launcher/folder/recommend/bean/AppStatBean;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher/folder/download/ReportController;->b(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Lcom/android/launcher/folder/recommend/bean/AppStatBean;)V

    return-void

    :goto_14
    iget-object v0, p0, Lcom/android/launcher/folder/download/b;->b:Lcom/android/launcher/folder/download/ReportController;

    iget v1, p0, Lcom/android/launcher/folder/download/b;->c:I

    iget v2, p0, Lcom/android/launcher/folder/download/b;->d:I

    iget-object v3, p0, Lcom/android/launcher/folder/download/b;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/folder/download/b;->f:Lcom/android/launcher/folder/recommend/bean/AppStatBean;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher/folder/download/ReportController;->e(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Lcom/android/launcher/folder/recommend/bean/AppStatBean;)V

    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
