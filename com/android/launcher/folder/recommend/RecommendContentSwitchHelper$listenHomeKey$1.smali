.class public final Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$listenHomeKey$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/HomeKeyObserver$OnHomeKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->listenHomeKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$listenHomeKey$1;->this$0:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHomeKeyLongPressed()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$listenHomeKey$1;->this$0:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->getSecondDialog()Landroid/app/Dialog;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_c
    return-void
.end method

.method public onHomeKeyPressed()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$listenHomeKey$1;->this$0:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->getSecondDialog()Landroid/app/Dialog;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_c
    return-void
.end method
