.class public Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
    .registers 19

    move-object v0, p0

    new-instance v1, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;-><init>(Lcom/android/launcher/settings/LauncherIndexablesProvider$1;)V

    move v2, p1

    invoke-virtual {v1, p1}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setRank(I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    move v2, p2

    invoke-virtual {v1, p2}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setIconResID(I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    move-object v2, p3

    invoke-virtual {v1, p3}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setKey(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    move v2, p4

    invoke-static {p0, p4}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->access$100(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setTitle(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    move v2, p5

    invoke-static {p0, p5}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->access$100(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setSummaryOn(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    move v2, p6

    invoke-static {p0, p6}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->access$100(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setSummaryOff(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    move-object v2, p7

    invoke-static {p0, p7}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->access$000(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setScreenTitle(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    move-object v1, p8

    invoke-virtual {v0, p8}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setClassName(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    move-object v1, p9

    invoke-virtual {v0, p9}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setIntentAction(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    move-object v1, p10

    invoke-virtual {v0, p10}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setIntentTargetPackageName(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    move-object v1, p11

    invoke-virtual {v0, p11}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setIntentTargetClassName(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    move-object v1, p12

    invoke-virtual {v0, p12}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setDependency(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setEntries(Ljava/lang/Object;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    move-object/from16 v1, p14

    invoke-virtual {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setKeyWords(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    move/from16 v1, p15

    invoke-virtual {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setUserID(I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    return-object v0
.end method

.method public static build(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
    .registers 19

    move-object v0, p0

    new-instance v1, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;-><init>(Lcom/android/launcher/settings/LauncherIndexablesProvider$1;)V

    move v2, p1

    invoke-virtual {v1, p1}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setRank(I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    move v2, p2

    invoke-virtual {v1, p2}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setIconResID(I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    move-object v2, p3

    invoke-virtual {v1, p3}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setKey(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    move v2, p4

    invoke-static {p0, p4}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->access$100(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setTitle(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    move-object v2, p5

    invoke-virtual {v1, p5}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setSummaryOn(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    move v2, p6

    invoke-static {p0, p6}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->access$100(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setSummaryOff(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    move-object v2, p7

    invoke-static {p0, p7}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->access$000(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setScreenTitle(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    move-object v1, p8

    invoke-virtual {v0, p8}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setClassName(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    move-object v1, p9

    invoke-virtual {v0, p9}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setIntentAction(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    move-object v1, p10

    invoke-virtual {v0, p10}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setIntentTargetPackageName(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    move-object v1, p11

    invoke-virtual {v0, p11}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setIntentTargetClassName(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    move-object v1, p12

    invoke-virtual {v0, p12}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setDependency(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setEntries(Ljava/lang/Object;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    move-object/from16 v1, p14

    invoke-virtual {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setKeyWords(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    move/from16 v1, p15

    invoke-virtual {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->setUserID(I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v0

    return-object v0
.end method
