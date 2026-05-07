.class public Lcom/oplus/ovoiceskillservice/SkillActionsService;
.super Landroid/app/Service;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OVSS.SkillActionsService"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const-string p1, "OVSS.SkillActionsService"

    const-string v0, "onBind"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/oplus/ovoiceskillservice/SkillActionsService$1;

    invoke-direct {p1, p0, p0}, Lcom/oplus/ovoiceskillservice/SkillActionsService$1;-><init>(Lcom/oplus/ovoiceskillservice/SkillActionsService;Lcom/oplus/ovoiceskillservice/SkillActionsService;)V

    invoke-virtual {p1}, Lcom/oplus/ovoicemanager/service/ISkillListener$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .registers 3

    const-string v0, "OVSS.SkillActionsService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/oplus/ovoiceskillservice/utils/SkillActionUtils;->load(Landroid/content/Context;)V

    return-void
.end method
