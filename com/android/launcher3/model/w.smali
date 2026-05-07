.class public final synthetic Lcom/android/launcher3/model/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/FirstScreenBroadcast;Landroid/content/Context;Ljava/util/List;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/w;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/model/w;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Context;Landroidx/preference/PreferenceDataStore;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/w;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/model/w;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/model/w;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_18

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/model/w;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/FirstScreenBroadcast;

    iget-object v1, p0, Lcom/android/launcher3/model/w;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/model/w;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/Set;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher3/model/FirstScreenBroadcast;->a(Lcom/android/launcher3/model/FirstScreenBroadcast;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;)V

    return-void

    :goto_18
    iget-object v0, p0, Lcom/android/launcher3/model/w;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    iget-object v1, p0, Lcom/android/launcher3/model/w;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/model/w;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/PreferenceDataStore;

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->d(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Context;Landroidx/preference/PreferenceDataStore;Landroid/util/Pair;Ljava/util/ArrayList;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
