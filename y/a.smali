.class public final synthetic Ly/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;ILcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Ly/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/a;->b:Ljava/lang/Object;

    iput p2, p0, Ly/a;->c:I

    iput-object p3, p0, Ly/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;I)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Ly/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Ly/a;->d:Ljava/lang/Object;

    iput p3, p0, Ly/a;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget v0, p0, Ly/a;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_14

    :pswitch_6  #0x0
    iget-object v0, p0, Ly/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;

    iget v1, p0, Ly/a;->c:I

    iget-object p0, p0, Ly/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->a(Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;ILcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;Landroid/view/View;)V

    return-void

    :goto_14
    iget-object v0, p0, Ly/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;

    iget-object v1, p0, Ly/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;

    iget p0, p0, Ly/a;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->a(Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;ILandroid/view/View;)V

    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
