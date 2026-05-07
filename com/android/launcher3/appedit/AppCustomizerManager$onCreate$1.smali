.class final Lcom/android/launcher3/appedit/AppCustomizerManager$onCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appedit/AppCustomizerManager;->onCreate(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        "Ly2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $cxt:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/launcher3/appedit/AppCustomizerManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$onCreate$1;->this$0:Lcom/android/launcher3/appedit/AppCustomizerManager;

    iput-object p2, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$onCreate$1;->$cxt:Landroid/content/Context;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/appedit/AppCustomizerManager$onCreate$1;->invoke(Ljava/lang/String;Ljava/lang/String;IZ)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 18

    move-object v0, p0

    const-string/jumbo v1, "packageName"

    move-object v5, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    move-object v7, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher3/appedit/AppCustomizerManager$onCreate$1;->this$0:Lcom/android/launcher3/appedit/AppCustomizerManager;

    invoke-static {v1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->access$getMArgs$p(Lcom/android/launcher3/appedit/AppCustomizerManager;)Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->getItemInfo()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v1

    if-nez v1, :cond_1c

    goto :goto_50

    :cond_1c
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_23

    goto :goto_50

    :cond_23
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2a

    goto :goto_50

    :cond_2a
    iget-object v2, v0, Lcom/android/launcher3/appedit/AppCustomizerManager$onCreate$1;->this$0:Lcom/android/launcher3/appedit/AppCustomizerManager;

    iget-object v0, v0, Lcom/android/launcher3/appedit/AppCustomizerManager$onCreate$1;->$cxt:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v0, "cxt.applicationContext"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/launcher3/appedit/AppCustomizerManager;->access$getMArgs$p(Lcom/android/launcher3/appedit/AppCustomizerManager;)Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->getItemInfo()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/launcher3/appedit/AppCustomizerManager;->access$identifier(Lcom/android/launcher3/appedit/AppCustomizerManager;Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v4

    const/4 v10, 0x0

    const/16 v11, 0x80

    const/4 v12, 0x0

    move-object v5, p1

    move-object v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-static/range {v2 .. v12}, Lcom/android/launcher3/appedit/AppCustomizerManager;->updateItemTitle$default(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_50
    return-void
.end method
